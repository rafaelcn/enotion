namespace ENotion {
    public class ApplicationWindow : Hdy.ApplicationWindow {

        private WebKit.WebView webview = null;

        construct {
            Hdy.init();

            title = "eNotion";
            window_position = Gtk.WindowPosition.CENTER;

            var headerbar = new Hdy.HeaderBar() {
                has_subtitle = false,
                show_close_button = true,
                title = "eNotion"
            };

            headerbar.get_style_context().add_class("default-decoration");

            var webview = new WebKit.WebView();

            //webview.load_uri("https://notion.so");
            //webview.show();

            //window.add(webview);

        }
    }
}
