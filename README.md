# Laravel CRUDアプリ
https://takeuchi-portofolio.com/  

Laravelで作成したシンプルなCRUDアプリです。
CircleCIとAWS Code４兄弟によるCI/CDパイプラインの構築をしました。

# 使用技術
- PHP 8.0.8
- Laravel 6.12.0
- Vue.js　　2.6.11
- CircleCI　　
- AWS
    - EC2 + nginx + RDS(PostgreSQL) 
    - CodeCommit
    - CodeBuild
    - CodeDeploy
    - CodePipeline)
- Docker
- テストではSQLiteを使用

### CI(継続的インテグレーション)
ローカルで変更されたソースコードがGitHubのリポジトリにプッシュされるたびに自動でテストを行うことで、変更後のソースコードをリポジトリのmasterブランチに統合(マージ)可能な状態にする仕組み
### CD(継続的デリバリー)
リポジトリのmasterブランチのソースコードが変更されるたびに、自動で本番環境にデプロイする仕組み

### CircleCIとAWS Code４兄弟によるCI/CDパイプライン　構成図
CI/CDパイプラインをあらかじめ構築しておくことで、バグの発生を抑えつつ、アプリの機能追加、変更を1日に何回も本番環境にリリースすることが可能となりました。
![472927dd-4a42-472d-96ed-77cdda6e28ae](https://user-images.githubusercontent.com/58723017/132625929-31f3402b-04c0-41f8-b6d4-d6570822e3e0.png)

# AWS(インフラ)構成図
![名称未設定 drawio (1)](https://user-images.githubusercontent.com/58723017/132848710-460f3020-e3a4-4d4d-b150-b9edf919aaf3.png)

# 機能一覧
- ユーザー登録、ログイン機能
- CRUD機能
- タグ機能
- いいね機能(vue.js)
- フォロー機能(vue.js)

# テスト
- 単体テスト(PHPUnit)
