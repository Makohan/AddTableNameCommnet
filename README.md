# AddTableNameCommnet
アッパーキャメルのクラス名の上にスネークケースのテーブル名コメントを付与する

## 実行方法

1. mainに対し、第一引数にschema.ymlのファイルパスを指定して実行する
`ruby app/main.rb data/schema.yml`

2. 第一引数＋'.temp'にコメント付きファイルを出力する

## 実行結果

実行前
```
# テーブル1
JobeetCategory:
  actAs: { Timestampable: ~ }
  columns:
    name: { type: string(255), notnull: true, unique: true }
 
# テーブル2
JobeetJob:
  actAs: { Timestampable: ~ }
  columns:
    category_id:  { type: integer, notnull: true }
```

実行後
```
# テーブル1	jobeet_category
JobeetCategory:
  actAs: { Timestampable: ~ }
  columns:
    name: { type: string(255), notnull: true, unique: true }
 
# テーブル2	jobeet_job
JobeetJob:
  actAs: { Timestampable: ~ }
```
