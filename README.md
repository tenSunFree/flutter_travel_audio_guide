# travel_audio_guide_flutter

![CI](https://github.com/tenSunFree/travel_audio_guide_flutter/actions/workflows/ci.yml/badge.svg)
![CD](https://github.com/tenSunFree/travel-audio-guide-flutter/actions/workflows/cd.yml/badge.svg)

---

## Introduction

Travel audio guide app with local content caching, offline browsing, audio download, offline playback, and a built-in media player, built using Riverpod, Drift, and Clean Architecture.

This project is for learning and technical practice.

---

## Preview

<p align="left">
  <img src="https://i.postimg.cc/DZNmrcFJ/Screenshot-20260510-130756.png" width="160"/>
  <img src="https://i.postimg.cc/V6h5qF1f/Screenshot-20260510-130807.png" width="160"/>
  <img src="https://i.postimg.cc/RFYq7T9t/Screenshot-20260510-130814.png" width="160"/>
  <img src="https://i.postimg.cc/wvr3XkH3/Screenshot-20260510-130835.png" width="160"/>
</p> 
<p align="left">
  <img src="https://i.postimg.cc/brv12g1R/Screenshot-20260506-015654.png" width="160"/>
  <img src="https://i.postimg.cc/HnLb7zbw/Screenshot-20260506-014008.png" width="160"/>
  <img src="https://i.postimg.cc/NGb45rYP/368017.jpg" width="160"/>
  <img src="https://i.postimg.cc/sXV7TMt1/Screenshot-20260501-151642.png" width="160"/>
  <img src="https://i.postimg.cc/KzJLwZ24/Screenshot-20260501-151730.png" width="160"/>
</p> 
<p align="left">
  <img src="https://i.postimg.cc/J0hjBxjq/Screenshot-20260506-014016.png" width="160"/>
  <img src="https://i.postimg.cc/Rh6rPTvy/Screenshot-20260505-021346.png" width="160"/>
  <img src="https://i.postimg.cc/Y2ZBvT3v/Screenshot-20260505-021356.png" width="160"/>
</p> 
<p align="left">
  <img src="https://i.postimg.cc/zvfTR7T0/Screenshot-20260506-014013.png" width="160"/>
  <img src="https://i.postimg.cc/5Ns3cK1B/368412.jpg" width="160"/>
  <img src="https://i.postimg.cc/nhSX4tTK/368145.jpg" width="160"/>
</p> 

---

## Features

### Travel Content

- Browse attractions, audio guides, and activities from the Taipei Travel Open API
- View attraction and activity detail pages with HTML description rendering
- Display activity metadata including event period, organizer, venue, ticket information, and related links
- Tap venue phone numbers to launch the native dialer
- Open external links and related URLs via `url_launcher`

### Offline-First Experience

- Cache-first architecture: serve content from the local Drift database instantly, then refresh from remote APIs
- Paginated API synchronization with upsert to keep local data up to date
- Offline browsing for previously synced travel content
- Reactive UI updates driven by Drift DAO streams
- Skeleton loading placeholders while remote data is loading and the local cache is empty

### Audio Guide

- Audio guide detail page with cover image, introduction, practical information, and playback controls
- Local `.mp3` download with file existence detection to avoid redundant downloads
- Offline playback for downloaded audio guides
- In-app audio player with play / pause state management
- Live step counting via Android sensor integration during audio guide playback
- Post-walk session summary after completing an audio guide walk

### Activity Integration

- Add activity dates to the native calendar as all-day events
- Correctly handle long-running exhibitions by applying an end-date offset for iOS all-day calendar events
- Share activity details through the native system share sheet

### Filtering and UX

- Sort and filter bottom sheets for attractions, audio guides, and activities
- Active filter summary bars showing current filter conditions
- Consistent loading, empty state, and error state handling across all list pages

### Architecture

- Clean Architecture with separation of data, domain, and presentation layers
- Feature-first project structure
- State management with `flutter_riverpod`
- Local persistence with Drift and generated DAOs
- HTTP client with Dio and centralized request / response logging via Talker
- Type-safe Android native method channels generated with Pigeon

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
- go_router  
  Declarative routing solution (Centralizes navigation logic, manages detail page routing via `extra` object passing, and improves maintainability across feature modules)

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
