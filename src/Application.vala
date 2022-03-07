public class ENotion : Gtk.Application {
    public ENotion() {
        Object (
            application_id: "com.github.rafaelcn.enotion",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        var window = new Gtk.ApplicationWindow (this) {
            default_height = 700,
            default_width = 1200,
            title = "eNotion"
        };

        var webview = new WebKit.WebView();

        webview.load_uri("https://notion.so/login");

        webview.show();

        window.add(webview);
        window.show_all();
    }

    public static int main (string[] args) {
        var app = new ENotion();
        return app.run (args);
    }
}
