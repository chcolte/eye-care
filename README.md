# eye-care（仮称）
近視抑制アプリケーション(Android対応)

マイルストーン
1. スマホと顔の距離が近くなったら通知して注意を促すプッシュ通知機能実装
2. 過去のデータを振り返れるようにする。

拡張マイルストーン
1. 子供向けアプリケーションとして、スクリーンタイマーアプリとの連携/統合により、スマホの適正利用とスマホ利用可能時間の連動機能を作成
2. 保護者用の管理システムを構築
3. スマホ首等になりやすい姿勢の推定や、周りの照度等のデータも取り扱えるようにする。

動作環境
 - 初期対応OS: Android10以降（将来的にはiOS対応もしてみたい。が開発者に実行環境がない）
 - その他環境: インカメラ付き（スマートフォン、タブレット）、MediaPypeIrysがまともに動くスペック

開発リソース: 
 - MediaPipeIrys[1]　・・・　カメラの画像から、カメラと人の眼球との距離を推定できるAI。後継のAIモデルは顔全体の3次元データが取得できるが、今のところ必要ないので利用するかどうかは不明。※[後継AI](https://ai.google.dev/edge/mediapipe/solutions/vision/face_landmarker?hl=ja)
 - Dart/Flutter　・・・　Flutterアプリがバックグラウンドでカメラ起動ができるか否かで決定->適切な条件下で可能(https://github.com/chcolte/eye-care/issues/2#issue-2724562553)

[1]: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/iris.md

開発環境: 
- Zorin OS 17.2 Core 64bit
- Android Studio( Koala Feature Drop | 2024.1.2 )
- Flutter SDK ( Stable channel, 3.24.3 , ref: dec2ee5)

2024.12.9時点
```
$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.24.3, on Zorin OS 17.2 6.8.0-48-generic, locale ja_JP.UTF-8)
[✓] Android toolchain - develop for Android devices (Android SDK version 35.0.0)
[✓] Chrome - develop for the web
[✓] Linux toolchain - develop for Linux desktop
[✓] Android Studio (version 2024.1)
[✓] VS Code (version 1.93.1)
[✓] Connected device (2 available)
[✓] Network resources

• No issues found!
```

このプロジェクトは、GitHub CopilotでAI共同開発する練習を兼ねるものとする。
