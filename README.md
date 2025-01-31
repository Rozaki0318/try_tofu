# Objectives

1. OpenTofuを試す
1. modulesを体得する
1. list, mapなどのデータ型、for_each, countなどの繰り返し処理を習得する
1. terraformの最適なディレクトリ構造を探る
1. GitHub Actionと連携させる


# Assumptions

1. 環境はdevとstg（あとでprd追加）
1. AWSアカウントは環境ごとに分ける
1. tfstateはAWSアカウントごとに分ける
1. 間違ったプロファイルでtofu plan, applyできないように


```
.
├── README.md
├── envs
│   ├── dev
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   └── version.tf
│   └── stg
│       ├── backend.tf
│       ├── main.tf
│       ├── provider.tf
│       └── version.tf
└── modules
    └── vpc
        ├── main.tf
        ├── outputs.tf
        └── variable.tf

5 directories, 12 files
```
