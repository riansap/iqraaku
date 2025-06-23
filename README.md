<div align="center">

# Iqraaku

### Simple Modern Quran App for Mobile

<a href="https://youtube.com/shorts/m75agrkk4nc" target="_blank">
  <Img src="lib/assets/images/home.jpeg" width="300" alt="Home"/>
</a>

</div>

## Description

Iqraaku is a simple and modern Quran application designed to help you read, understand, and memorize the Quran with ease. Built with Flutter, this application offers a clean, light-weight, responsive, and feature-rich user experience on both Android and iOS mobile devices.

## Key Features

- **Surah List**: Displays all Surahs of the Quran complete with translations.
- **Surah Detail**: Read verse by verse, view translations and interpretations.
- **Last Read**: Continue from your last reading position.
- **Light & Dark Themes**: Choose themes according to your preference.
- **Multi-Platform**: Supports Android, iOS, Web, Windows, macOS, and Linux.
- **User Settings**: Change your name and application theme.
- **Onboarding**: A welcome screen for first-time users.
- **Splash Screen**: An engaging introductory display for the application.

## Menu List

- **Splash Screen**: The initial display when the application opens.
- **Onboarding**: Welcome screen for users.
- **Home**: Contains greetings, last read history, and a list of Surahs.
- **Surah Detail**: Displays details of Surahs and their verses.
- **User Preferences**: Settings for name and theme.

## API

This application uses the following public API:

- [staticquran.vercel.app/api/v1/](https://staticquran.vercel.app/api/v1/)
  - **GET /surah**: List all Surahs (with `lang` query support for language)
  - **GET /surah/{number}**: Surah details, verses, translations, interpretations, and audio

## Tech Stack & Tools

- **Flutter** (SDK >=3.4.1 <4.0.0)
- **State Management**: GetX
- **Networking**: Dio
- **Local Storage**: Hive
- **Code Generation**: Freezed, Json Serializable, Build Runner
- **UI**: Google Fonts, Flutter SVG, Shimmer, ScreenUtil
- **Splash & Icon**: flutter_native_splash, flutter_launcher_icons
- **Testing & Linting**: flutter_test, flutter_lints

## How to Run

```bash
# Clone repository
https://github.com/riansap/iqraaku.git
cd iqraaku

# Install dependencies
flutter pub get

# Run the application
dart run
# or
flutter run
```

## Author

Rian Saputra - https://github.com/riansap

## Information

Built for the final project of the Sanbercode Flutter Intensive Bootcamp - Batch 67.
#BootcampDigitalSkill #Sanbercode #Flutter
