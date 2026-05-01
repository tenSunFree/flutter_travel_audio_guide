# travel_audio_guide_flutter

---

## Introduction

Travel audio guide app with local content caching, offline browsing, audio download, offline playback, and a built-in media player, built using Riverpod, Drift, and Clean Architecture.

This project is for learning and technical practice.

---

## Preview

<p align="left">
  <img src="https://i.postimg.cc/3r9BdD7c/368016.jpg" width="200"/>
  <img src="https://i.postimg.cc/NGb45rYP/368017.jpg" width="200"/>
  <img src="https://i.postimg.cc/sXV7TMt1/Screenshot-20260501-151642.png" width="200"/>
  <img src="https://i.postimg.cc/KzJLwZ24/Screenshot-20260501-151730.png" width="200"/>
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

- Local content caching with Drift for attractions, audio guides, and activities
- Offline browsing for previously synced travel content
- Cache-first data loading with background refresh
- Paginated API synchronization for travel content
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
- Drift  
  Local persistence layer built on SQLite (Provides typed DAOs, reactive database streams, local caching, and offline browsing support)

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
travel_audio_guide_flutter
...
├─ android
│  ...
│  ├─ app
│  │  ├─ build.gradle.kts
│  │  └─ src
│  │     ...
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ tensunfree
│  │     │  │        └─ flutter_travel_audio_guide
│  │     │  │           └─ flutter_travel_audio_guide
│  │     │  │              ├─ HealthConnectApi.g.kt
│  │     │  │              ├─ HealthConnectManager.kt
│  │     │  │              ├─ MainActivity.kt
│  │     │  │              └─ StepSensorManager.kt
│  │  ...
├─ ios
│  ├─ ...
├─ lib
│  ├─ app.dart
│  ├─ core
│  │  ├─ constants
│  │  │  ├─ api_constants.dart
│  │  │  └─ app_colors.dart
│  │  ├─ database
│  │  │  ├─ app_database.dart
│  │  │  ├─ app_database.g.dart
│  │  │  ├─ daos
│  │  │  │  ├─ activity_dao.dart
│  │  │  │  ├─ activity_dao.g.dart
│  │  │  │  ├─ attraction_dao.dart
│  │  │  │  ├─ attraction_dao.g.dart
│  │  │  │  ├─ audio_guide_dao.dart
│  │  │  │  ├─ audio_guide_dao.g.dart
│  │  │  │  ├─ sync_meta_dao.dart
│  │  │  │  └─ sync_meta_dao.g.dart
│  │  │  ├─ database_provider.dart
│  │  │  └─ tables
│  │  │     ├─ activity_table.dart
│  │  │     ├─ attraction_table.dart
│  │  │     ├─ audio_guide_table.dart
│  │  │     └─ sync_meta_table.dart
│  │  ├─ error
│  │  │  └─ exceptions.dart
│  │  ├─ network
│  │  │  ├─ dio_log_filter.dart
│  │  │  └─ network_providers.dart
│  │  ├─ sync
│  │  │  ├─ app_sync_service.dart
│  │  │  └─ sync_providers.dart
│  │  ├─ theme
│  │  │  └─ app_theme.dart
│  │  └─ utils
│  │     ├─ app_logger.dart
│  │     └─ app_log_page.dart
│  ├─ features
│  │  ├─ activity
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ activity_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  ├─ activity_model.dart
│  │  │  │  │  └─ activity_page_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ activity_repository_impl.dart
│  │  │  ├─ di
│  │  │  │  └─ activity_providers.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ activity.dart
│  │  │  │  │  └─ activity_page.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ activity_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     └─ get_activities_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ controllers
│  │  │     │  └─ activity_list_controller.dart
│  │  │     ├─ enums
│  │  │     │  └─ activity_sort_filter_enums.dart
│  │  │     ├─ pages
│  │  │     │  ├─ activity_detail_page.dart
│  │  │     │  └─ activity_list_page.dart
│  │  │     └─ widgets
│  │  │        ├─ activity_condition_summary_bar.dart
│  │  │        ├─ activity_sort_filter_bottom_sheet.dart
│  │  │        └─ activity_tile.dart
│  │  ├─ attraction
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ attraction_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  ├─ attraction_model.dart
│  │  │  │  │  └─ attraction_page_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ attraction_repository_impl.dart
│  │  │  ├─ di
│  │  │  │  └─ attraction_providers.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ attraction.dart
│  │  │  │  │  └─ attraction_page.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ attraction_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ get_attractions_usecase.dart
│  │  │  │     └─ get_attraction_categories_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ controllers
│  │  │     │  └─ attraction_list_controller.dart
│  │  │     ├─ enums
│  │  │     │  └─ attraction_sort_filter_enums.dart
│  │  │     ├─ pages
│  │  │     │  ├─ attraction_detail_page.dart
│  │  │     │  └─ attraction_list_page.dart
│  │  │     └─ widgets
│  │  │        ├─ attraction_condition_summary_bar.dart
│  │  │        ├─ attraction_sort_filter_bottom_sheet.dart
│  │  │        └─ attraction_tile.dart
│  │  ├─ audio_guide
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  ├─ audio_guide_local_data_source.dart
│  │  │  │  │  └─ audio_guide_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  ├─ audio_guide_model.dart
│  │  │  │  │  └─ audio_guide_page_model.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ audio_guide_repository_impl.dart
│  │  │  │  └─ services
│  │  │  │     └─ audio_playback_service_impl.dart
│  │  │  ├─ di
│  │  │  │  └─ audio_guide_providers.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ audio_guide.dart
│  │  │  │  │  ├─ audio_guide_page.dart
│  │  │  │  │  └─ audio_playback_state.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ audio_guide_repository.dart
│  │  │  │  ├─ services
│  │  │  │  │  └─ audio_playback_service.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ download_audio_guide_usecase.dart
│  │  │  │     └─ get_audio_guides_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ controllers
│  │  │     │  ├─ audio_guide_list_controller.dart
│  │  │     │  └─ audio_player_controller.dart
│  │  │     ├─ enums
│  │  │     │  └─ sort_filter_enums.dart
│  │  │     ├─ pages
│  │  │     │  ├─ audio_guide_detail_page.dart
│  │  │     │  └─ audio_guide_list_page.dart
│  │  │     └─ widgets
│  │  │        ├─ audio_guide_tile.dart
│  │  │        ├─ common_app_bar.dart
│  │  │        ├─ condition_summary_bar.dart
│  │  │        └─ sort_filter_bottom_sheet.dart
│  │  ├─ home
│  │  │  └─ presentation
│  │  │     └─ pages
│  │  │        └─ main_tab_page.dart
│  │  └─ step_tracking
│  │     ├─ data
│  │     │  ├─ health_connect_api.g.dart
│  │     │  └─ services
│  │     │     └─ step_tracking_service_impl.dart
│  │     ├─ di
│  │     │  └─ step_tracking_providers.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  └─ exercise_summary_data.dart
│  │     │  └─ services
│  │     │     └─ step_tracking_service.dart
│  │     └─ presentation
│  │        ├─ controllers
│  │        │  └─ step_tracking_controller.dart
│  │        ├─ enums
│  │        │  └─ step_tracking_source.dart
│  │        └─ widgets
│  │           └─ session_summary_card.dart
│  └─ main.dart
├─ linux
│  ...
├─ macos
│  ...
├─ pigeons
│  └─ health_connect_api.dart
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
├─ test
│  ├─ app
│  │  └─ app_smoke_test.dart
│  ├─ features
│  │  └─ audio_guide
│  │     └─ presentation
│  │        └─ controllers
│  │           └─ audio_guide_list_controller_test.dart
│  └─ test_helpers
│     ├─ app_test_harness.dart
│     ├─ audio_guide_fakes.dart
│     └─ audio_guide_fixtures.dart
├─ web
│  ...
```
