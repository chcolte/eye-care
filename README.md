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
 - 初期対応OS: Android（将来的にはiOS対応もしてみたい。が開発者に実行環境がない）
 - その他環境: インカメラ付き（スマートフォン、タブレット）、MediaPypeIrysがまともに動くスペック

開発リソース: 
 - MediaPipeIrys[1]　・・・　カメラの画像から、カメラと人の眼球との距離を推定できるAI。後継のAIモデルは顔全体の3次元データが取得できるが、今のところ必要ないので利用するかどうかは不明。※後継AI(https://ai.google.dev/edge/mediapipe/solutions/vision/face_landmarker?hl=ja)
 - Kotlin or Flutter　・・・　Flutterアプリがバックグラウンドでカメラ起動ができるか否かで決定

[1]: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/iris.md


このプロジェクトは、GitHub CopilotでAI共同開発する練習を兼ねるものとする。
