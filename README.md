# notificaciones_push

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Prerequisitos

  node -v -> v22.14.0

## Abrir este proyecto desde VS Code
   permitir instalar

    SDK Flutter
    SDK Android

## En caso de que no se haya instalado SDK Android y no se desee instalar Android Studio seguir el siguiente tutorial. De todas maneras es posible que se desee instalar Android Studio para ya tener los emuladores

https://thanhtunguet.info/posts/how-to-install-android-sdk-android-cmdline-tools-without-android-studio/


# Verificacion

Desde la terminal ejecutar

    flutter doctor

Verificar que todo este OK y seguir las instrucciones en caso de que falte algo, para mas detalles se puede ejecutar

    flutter doctor -v

# Crear APK (Aplicacion para Android)
  -> build/app/outputs/flutter-apk/app-release.apk

    flutter clean
    flutter pub get
    flutter build apk


# [Crear IPA](https://docs.flutter.dev/deployment/ios) (Aplicacion para IPhone)
  Esto solo puede ser ejecutado desde una Mac

    flutter clean
    flutter pub get
    flutter build ipa

# Crear Aplicacion WEB
 -> build/web

    flutter run web

# Crear Aplicacion Desktop para Windows
  Esto solo puede ser ejecutado desde una computadora que tenga intalado windows

    flutter clean
    flutter build windows