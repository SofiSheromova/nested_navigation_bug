flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter format --line-length=120 .

# flutter pub run build_runner watch --delete-conflicting-outputs
# flutter format --line-length=120 . && flutter pub run import_sorter:main
