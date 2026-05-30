# Feature-Based Clean Architecture

This document explains the architecture implemented in this Flutter application. The project follows a **Feature-Based** directory structure combined with **Clean Architecture** principles. This approach ensures separation of concerns, scalability, and maintainability.

## 1. High-Level Folder Structure

The `lib` directory is divided into two main folders:
- **`core/`**: Contains application-wide configurations, constants, utilities, and common widgets.
- **`features/`**: Contains the actual business features of the application, each isolated into its own directory.

```text
lib/
├── core/
│   ├── api/
│   ├── common/
│   ├── configs/
│   ├── constants/
│   ├── theme/
│   └── utils/
└── features/
    ├── auth/
    ├── home/
    ├── items/
    ├── onboarding/
    ├── profile-and-settings/
    ├── search/
    └── subscription/
```

## 2. Core Directory (`lib/core/`)

The core directory acts as the foundation of the app. It holds code that is shared across multiple features or acts as the global infrastructure.

- **`api/`**: Base networking setup. Likely contains the configuration for the `dio` HTTP client, interceptors, error handling, and base API response wrappers.
- **`common/`**: Shared components that don't belong to a specific feature (e.g., standard buttons, text inputs, common UI placeholders).
- **`configs/`**: Environment configurations (`.env`), routing setup (using `go_router`), and app startup configurations.
- **`constants/`**: Hardcoded values used throughout the app, including API endpoints, error messages, and asset paths.
- **`theme/`**: Definitions for light and dark modes, colors, typography, and custom component themes.
- **`utils/`**: Helper files, extensions, and pure functional tools (e.g., date formatters, validators).

## 3. Features Directory (`lib/features/`)

Instead of grouping files by their type across the entire app (e.g., putting all models in one folder and all screens in another), the app groups files by **Feature**. A feature represents a distinct functional domain of the app.

Inside each feature (e.g., `lib/features/auth`), the structure follows a layered pattern:

```text
auth/
├── controllers/
├── models/
├── screens/
├── services/
└── widgets/
```

### 3.1 Controllers (State Management)
- **Role**: Handles the Presentation Logic and State Management.
- **Implementation**: Utilizes **Flutter BLoC** (`flutter_bloc`), given its presence in the `pubspec.yaml`, to manage state and react to user events. Controllers bind the UI to the underlying services.

### 3.2 Models (Data Layer)
- **Role**: Represents the data structures and entities for the feature.
- **Implementation**: Uses tools like `freezed` and `json_serializable` for defining immutable data classes, deep copying, and parsing JSON from APIs.

### 3.3 Screens (Presentation Layer)
- **Role**: Contains the full Flutter page widgets (e.g., `LoginScreen`, `HomeScreen`).
- **Implementation**: Screens primarily consist of layout and UI bindings. They listen to the `Controllers` via BlocBuilders/BlocListeners to render data and react to state changes.

### 3.4 Services (Domain/Data Layer)
- **Role**: Handles Business Logic, API communication, and Local Storage.
- **Implementation**: 
  - Acts as the repository/data source. Uses `dio` for remote network requests and `objectbox` for local database operations.
  - Also acts as the domain layer where core business rules for the specific feature are applied.
  - Dependencies are injected via `get_it` for decoupling.

### 3.5 Widgets (Presentation Layer - Components)
- **Role**: Contains UI components exclusively used by this specific feature.
- **Implementation**: Avoids polluting the `core/common` widgets with highly specific UI parts. For example, an `AuthTextField` might live here instead of `core`.

## 4. Key Libraries Driving the Architecture

The architecture is supported by several powerful packages defined in the `pubspec.yaml`:
- **State Management**: `flutter_bloc`
- **Dependency Injection**: `get_it`
- **Networking**: `dio`
- **Local Database**: `objectbox`
- **Routing**: `go_router`
- **Immutability & Code Gen**: `freezed`, `json_serializable`
- **Functional Programming**: `fpdart` (Used for safe error handling like Either/Option patterns).

## 5. Benefits of this Architecture

1. **Scalability**: Adding a new feature is as simple as creating a new folder in `features/` without muddying existing code.
2. **Readability**: Developers can find everything related to a specific domain (e.g., `auth`) in one place.
3. **Decoupling**: Features are independent. Changes in the `home` feature are unlikely to inadvertently break the `auth` feature.
4. **Testability**: Separating logic into `services` and `controllers` makes unit testing straightforward by mocking dependencies.
