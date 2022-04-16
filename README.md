# CAT PROJECT

## 開発環境
- Flutter version 2.10.4

## アプリ実行


- 開発環境：

```
flutter run --dart-define=FLAVOR=dev
```

- ステージング環境：

```
flutter run --dart-define=FLAVOR=stg
```

- 本番環境 :

```
flutter run --dart-define=FLAVOR=prod
```
## FlutterアプリでFlavorを取得して使いたい場合

```
// `--dart-define=FLAVOR=dev` と指定した場合
const flavor = String.fromEnvironment('FLAVOR');
print(flavor) // dev
```
