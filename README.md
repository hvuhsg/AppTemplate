# template

Flutter application template

## How do I use it?

This project is a starting point for a Flutter application with simple but powerful structure.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## Code Structure (`lib/`)

### main (`lib/main.dart`)

The main function of the app, responsible for initializing services creating providers and running the app.

### models (`lib/models/`)

All the models of the app, a model is a class that contains only data

### providers (`lib/providers/`)

Provider is responsible for holding the app state and notifying about any change

### services (`lib/services/`)

Services are logic components that provid a specific service like remote-file-storage or notifications-service

### UI (`lib/UI/`)

The UI folder contains all of the app UI

#### Screens (`lib/UI/screens/`)

All of the screens of the app and thire widgets

#### widgets (`lib/UI/widgets/`)

Widgets that get use in more then one screen

#### app (`lib/UI/app.dart`)

The UI manager, responsible for routes and theme, language and more...
