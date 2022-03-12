namespace ENotion {
    private ENotion.ApplicationWindow window = null;

    public class Application : Gtk.Application {
        construct {
            application_id = "com.github.rafaelcn.enotion";
            flags = ApplicationFlags.FLAGS_NONE;

            var quit_action = new SimpleAction("quit", null);

            add_action(quit_action);

            quit_action.activate.connect(() => {
                if (window != null) {
                    window.destroy();
                }
            });
        }

        protected override void activate() {
            window = new ENotion.ApplicationWindow();
            this.add_window(window);
        }
    }

    public static int main(string[] args) {
        var app = new Application();
        return app.run(args);
    }
}
