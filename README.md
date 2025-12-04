# INC Salary Management API (Dart + Dart Frog)

A production-ready REST API built with **Dart Frog** and **Drift** (type-safe SQLite).

## AI Usage (Transparent)

I used **Grok 4** and **Claude 3.5 Sonnet** heavily and intentionally:

- Scaffolded full Dart Frog + Drift project structure
- Generated failing tests → minimal passing code → refactor loop
- Used AI to generate type safe drift queries and JSON serialization
- Asked:
  > "Write a red/green/refactor dart test for POST /employees using dart_frog_test"  
  > "Generate drift query for min/max/avg salary by country directly from columns"

This accelerated development ~5x while I retained full architectural control.

## Running

```bash
dart pub get
dart run build_runner build --delete-conflicting-outputs
dart_frog dev