# このリポジトリは開発終了しました

# 開発環境用 dockerfile

### ビルド方法

```bash
./build.sh
./build.sh -m # メジャーバージョンアップ
./build.sh -p # パッチバージョンアップ
./build.sh -b # メジャーバージョンアップに向けた minor 999 リリース
```

### run

```bash
docker run -d -P --volumes-from sakai-shared sakai/devel:<version>
```

### 詳細

* sudo はパスワードなしでできるようになってる
