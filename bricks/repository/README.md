# clean_feature

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to produce boilerplate code for new feature based on clean architecture, using riverpod state management

## Prerequisites

Installed version of [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
Installed version of [freezed](https://pub.dev/packages/freezed)
Installed version of [json_serializable](https://pub.dev/packages/json_serializable)
Installed version of [equatable](https://pub.dev/packages/equatable)
(optional) Installed version of [beamer](https://pub.dev/packages/beamer)


## Usage 🚀

```
mason make clean_feature
```
or 
```
mason make clean_feature --name login --entity user
```

Note: for better usage the output directory should be inside the lib folder.

## Variables ✨

| variable           | description                  | default | type      |
| ------------------ | ---------------------------- | ------- | --------- |
| `name`     | name of the feature          | login   | `string`  |
| `entity`     | name of the entity          | user   | `string`  |

## Output
```
├── data
│   └── models
│       └── entity_response.dart
│   └── repositories
│       └── name_repository.dart
├── domain
│   └── entities
│       └── entity.dart
│   └── notifiers
│       └── name_notifier.dart
├── presentation
│   ├── pages
│       └── name_page.dart
│   ├── widgets
│       └── name_widgets.dart

```