# Ika Smansara
IKA SMANSARA

---

## Getting Started 🚀

after clone this repo,

create 3 .env files for each flavor,

- dev-assets/.env
- staging-assets/.env
- production-assets/.env

An example content of an .env file can be seen in this file

``` .env_example```

after that please run this command

```sh
$ flutter pub get

$ dart run build_runner build
```

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Ika Smansara works on ~~iOS~~, Android, ~~Web~~, and ~~Windows~~._

---