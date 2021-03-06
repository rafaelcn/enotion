namespace ENotion {
    public class ApplicationWindow : Hdy.ApplicationWindow {

        private WebKit.WebView webview = null;

        construct {
            Hdy.init();

            title = "eNotion";
            window_position = Gtk.WindowPosition.CENTER;

            default_width = (int)1.777777778*1200;
            default_height = (int)1.777777778*720;

            var headerbar = new Hdy.HeaderBar() {
                hexpand = true,
                has_subtitle = false,
                show_close_button = true,
                title = "eNotion"
            };

            headerbar.get_style_context().add_class("default-decoration");

            webview = new WebKit.WebView() {
                vexpand = true,
                hexpand = true,
            };

            var webview_settings = webview.get_settings();

            webview_settings.enable_developer_extras = true;
            webview_settings.allow_modal_dialogs = true;

            webview.load_uri("https://notion.so");
            webview.show();

            var application_grid = new Gtk.Grid() {
                orientation = Gtk.Orientation.VERTICAL,
            };

            application_grid.add(headerbar);
            application_grid.add(webview);

            add(application_grid);

            var granite_settings = Granite.Settings.get_default ();
            var gtk_settings = Gtk.Settings.get_default ();

            gtk_settings.gtk_application_prefer_dark_theme = (
                granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK
            );

            granite_settings.notify["prefers-color-scheme"].connect (() => {
                gtk_settings.gtk_application_prefer_dark_theme = (
                    granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK
                );
            });

            show_all();
        }
    }
}
