# Tr3umphant Designs (Flutter web)

The 2022 Flutter web site for **Tr3umphant Designs**, Trey's app development studio. It's a responsive single-page-style site with Home, About, Portfolio, Pricing and Contact pages, built with GetX and deployed to Firebase Hosting.

## Features

- **Responsive layout**: a top web menu on wide screens and a side drawer on mobile (`lib/responsive.dart`, `lib/widgets/web_menu.dart`, `lib/widgets/side_menu.dart`).
- **Home**: hero area with a placeholder for an intro video.
- **About**: the studio's "our why" copy.
- **Portfolio**: cards for shipped apps (currently placeholder entries for Critic) that link to the App Store / Play Store with `url_launcher`.
- **Pricing**: Bronze, Silver and Gold packages ($1,000 / $2,000 / $3,000 for 1–3, 4–6 and 7–9 pages, each with a database and authentication).
- **Contact** page and an Instagram link.
- Raleway font and custom themes (`lib/constants/app_themes.dart`).

## How it works

Routing and state use [GetX](https://pub.dev/packages/get): `lib/constants/app_routes.dart` registers a `GetPage` per section, each with a view and view model under `lib/ui/<section>/`. `GetStorage` is initialized in `main.dart` and bound in `lib/initial_binding.dart`. Site copy, portfolio apps and prices live in `lib/constants/globals.dart`.

```
lib/
├── main.dart, initial_binding.dart, responsive.dart, menu_controller.dart
├── constants/      # routes, themes, globals (copy, portfolio, prices)
├── models/         # PortfolioAppModel, PricingModel
├── ui/             # home, about, portfolio, pricing, contact (view + view model)
└── widgets/        # header, menus, pricing and portfolio cards, social links
assets/             # images, icons, Raleway fonts
```

## Tech stack

- Flutter web, Dart `>=2.15.1 <3.0.0` (pre-Dart 3)
- `get`, `get_storage`, `getwidget`, `flutter_svg`, `url_launcher`, `material_design_icons_flutter`
- Firebase Hosting (`firebase.json` serves `build/web`)

## Getting started

Use a Flutter SDK that still supports Dart 2.x (Flutter 3.7.x or older).

```sh
flutter pub get
flutter run -d chrome
```

### Deploy

```sh
flutter build web
firebase deploy --only hosting     # project: tr3umphant-designs-bd77b (.firebaserc)
```

## Status

Archived 2022 version of the site; no longer maintained.
