# Laravel CRUDアプリ

本番環境URL 　https://takehubs.link/

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

<img width="635" alt="スクリーンショット 2022-03-02 17 48 51" src="https://user-images.githubusercontent.com/58723017/156327632-dc940d83-9093-4d5f-9ec1-a87c731dc2ce.png">


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
