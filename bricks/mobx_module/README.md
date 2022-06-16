# riverpod_module

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to produce boilerplate code for new feature using mobx state management

## Prerequisites

Installed version of [flutter_mobx] 

## Usage 🚀

```
mason make mobx_module
```
or 
```
mason make mobx_module --name create_account
```

Note: for better usage the output directory should be inside the lib folder.

## Variables ✨

| variable           | description                  | default | type      |
| ------------------ | ---------------------------- | ------- | --------- |
| `name`     | name of the module          | main   | `string`  |

## Output
```
├── model
│   └── create_account_model.dart
├── repository
│   ├── create_account_repository.dart
│   ├── create_account_repository_fake.dart
│   └── create_account_repository_impl.dart
├── store
│   ├── create_account_store.dart
│   └── create_account_store.g.dart
├── view
│   └── create_account_view.dart
└── widget
    └── create_account_widget.dart

```

[flutter_mobx]: https://pub.dev/packages/flutter_mobx