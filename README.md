# travel_audio_guide_flutter

---

## Introduction

Travel audio guide app with audio download, offline playback, and a built-in media player, built using Riverpod and Clean Architecture.

This project is for learning and technical practice.

---

## Preview

<p align="left">
  <img src="https://i.postimg.cc/3r9BdD7c/368016.jpg" width="200"/>
  <img src="https://i.postimg.cc/NGb45rYP/368017.jpg" width="200"/>
  <img src="https://i.postimg.cc/BZ8TQ7YP/368024.jpg" width="200"/>
</p> 
<p align="left">
  <img src="https://i.postimg.cc/h4Mrf7gC/368019.jpg" width="200"/>
  <img src="https://i.postimg.cc/FFGZ7Jmq/368023.jpg" width="200"/>
</p> 
<p align="left">
  <img src="https://i.postimg.cc/GhXQ0grX/368446.jpg" width="200"/>
  <img src="https://i.postimg.cc/5Ns3cK1B/368412.jpg" width="200"/>
  <img src="https://i.postimg.cc/nhSX4tTK/368145.jpg" width="200"/>
</p> 

---

## Features

- Paginated API fetching with infinite scroll
- Local `.mp3` download and file existence detection
- Offline playback for downloaded audio
- In-app audio player with play / pause handling
- Built with Clean Architecture and `flutter_riverpod`

---

## Tech Stack

- Clean Architecture  
  Layered software design (Independent domain logic, high testability, and strict separation of concerns)
- flutter_riverpod  
  Reactive state management & dependency injection (Compile-safe providers, automatic lifecycle management, and improved testability)
- Dio  
  Robust HTTP client (Handles API communication, file downloading, and standardized request handling)
- audioplayers  
  Audio playback library (Manages local audio playback, playback state streams, and media controls)
- path_provider  
  File system utility (Provides application-specific directories for storing and retrieving downloaded `.mp3` files)  
- Pigeon  
  Type-safe platform interop code generation (Bridges Flutter and native APIs with strongly typed messages, minimizes platform channel boilerplate, and improves maintainability for platform integration)

---

## Environment

- Flutter SDK: `3.38.10`
- Dart SDK: `3.10.9`

---

## Credits

This project is created for independent learning and demonstration purposes.
Special thanks to the original author for their open-source contribution.

---

## Notes

Image resources are for learning and purposes only. Please do not use them for commercial purposes.

If there is any infringement, please contact me for removal. Thank you.

---

## License

This repository is intended for learning and demonstration.

If you plan to open-source it, please choose a license and confirm third-party asset usage rights.

---

## Project Structure

```
flutter_travel_audio_guide
├─ ...
├─ lib
│  ├─ core
│  │  ├─ constants
│  │  │  └─ api_constants.dart
│  │  ├─ error
│  │  │  └─ exceptions.dart
│  │  └─ network
│  │     └─ network_providers.dart
│  ├─ features
│  │  └─ audio_guide
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  │  ├─ audio_guide_local_data_source.dart
│  │     │  │  └─ audio_guide_remote_data_source.dart
│  │     │  ├─ models
│  │     │  │  ├─ audio_guide_model.dart
│  │     │  │  └─ audio_guide_page_model.dart
│  │     │  └─ repositories
│  │     │     └─ audio_guide_repository_impl.dart
│  │     ├─ di
│  │     │  └─ audio_guide_providers.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  ├─ audio_guide.dart
│  │     │  │  └─ audio_guide_page.dart
│  │     │  ├─ repositories
│  │     │  │  └─ audio_guide_repository.dart
│  │     │  └─ usecases
│  │     │     ├─ download_audio_guide_usecase.dart
│  │     │     └─ get_audio_guides_usecase.dart
│  │     └─ presentation
│  │        ├─ controllers
│  │        │  ├─ audio_guide_list_controller.dart
│  │        │  └─ audio_player_controller.dart
│  │        ├─ pages
│  │        │  ├─ audio_guide_detail_page.dart
│  │        │  └─ audio_guide_list_page.dart
│  │        └─ widgets
│  │           └─ audio_guide_tile.dart
│  └─ main.dart
├─ ...
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ ...
└─ 
```
