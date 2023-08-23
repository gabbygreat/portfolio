# My Portfolio

## Project Structure

The project is divided into  layers

 - Data Layer
    - Local DB 
    - API Service
    - Shared Preferences
   
- Domain Layer 
    - repository

- Feature Layer
    - presentation/UI (widgets)
    - business logic (riverpod)


Each Layer has it's own function and jurisdictions 

the correct flow of data is represented in the list above


## Data Layer
This consists of the models folder, some services that would be represented later like database and shared prefs, api requests, serialization and deserialization, etc

## Domain Layer
This is the connection between the data layer and presentation layer 
the domain layer handles transmission to and fro the data layer

this consists solely of the repository folder, this is the handshake between the other two layers 

## Feature Layer
This is where all of our UI and it's related logic would be handled

this consists of the views, widgets and some config files 

## Packages and Functions

- flutter_riverpod : State management.
- flutter_screenutil : Responsiveness and adaptiveness.
- go_router : Declarative navigation.
- flutter_native_splash : Splash screen.
- dio : Networking.
- url_launcher: For launching a URL.
- flutter_native_splash: For displaying icon splash on launch.
- keyboard_dismisser: Hide keyboard when gestures are out of it.
- package_info_plus: For querying information about an application package.
- flutter_svg: Provides a wrapper around Dart implementations of SVG parsing.
- keyboard_dismisser: A simple Flutter package to hide the keyboard when performing a gesture outside of it.
- intl: Provides internationalization and localization facilities.
- package_info_plus: This Flutter plugin provides an API for querying information about an application package.
- another_flushbar:  Customization when notifying your user.
- local_auth: This Flutter plugin provides means to perform local, on-device authentication of the user.
- intl_phone_number_input: A simple and customizable flutter package for inputting phone number in intl.
- get_time_ago: A Flutter package to convert and format DateTime object.
- flutter_branch_sdk: A Flutter plugin to use the Branch.io deeplinking.
- share_plus:  Flutter plugin to share content from your Flutter app via the platform's share dialog.
- firebase_core: A Flutter plugin to use the Firebase Core API, which enables connecting to multiple Firebase apps.
- pull_to_refresh: A widget provided to the flutter scroll component drop-down refresh and pull up load.
- shimmer: A package provides an easy way to add shimmer effect in Flutter project.
- text_scroll: Flutter widget adds text auto-scrolling functionality (marquee text).
- firebase_messaging: Plugin to use the Firebase Cloud Messaging API.
- flutter_local_notifications: A cross platform plugin for displaying local notifications.
- local_session_timeout: Monitors app usage time and activity timeout
- flutter_stripe: The Stripe Flutter SDK
- webview_flutter: A Flutter plugin that provides a WebView widget.
- dartz: Used for it's Right and Left functional style.