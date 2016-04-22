# 開発環境用 dockerfile

## devel : 開発用 shell

### ビルド方法

```bash
cd devel
docker build --rm -t sakai/devel:<tag> .
```

### 詳細

* sudo はパスワードなしでできるようになってる


## shared : ファイル共有用 volume

### ビルド方法

```bash
cd shared
docker build --rm -t sakai/devel-shared:<tag> .
```

### 詳細

以下、が volume に設定してある

* ~/.git-post
