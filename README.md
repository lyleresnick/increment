# increment

This app simply displays a count of the number of times that the button is pressed. 

This should sound familiar, as this code is a refactor of the app which is created when you enter `flutter create <app_name>` in the console. This refactor uses an implementation of the BLoC architecture.

There are 2 branches: `main` and `bloc_not_injected`. The `main` branch uses dependency injection and the other does not. The consequence of not using injection is that the counter will reset to zero when the app is hot reloaded.

