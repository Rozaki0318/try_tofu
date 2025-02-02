# Objectives

1. OpenTofuを試す
1. modulesを体得する
1. list, mapなどのデータ型、for_each, countなどの繰り返し処理を習得する
1. terraformの最適なディレクトリ構造を探る

# System Architecture

1. 1VPC
1. 1PublicSubnet
1. 1ALB
1. 1ECS pulling from ECR

# Assumptions

1. 環境はdevとstg（あとでprd追加）
1. AWSアカウントは環境ごとに分ける
1. tfstateはAWSアカウントごとに分ける
1. 間違ったプロファイルでtofu plan, applyできないように



```
OpenTofu v1.9.0
on linux_amd64
```

```
.
├── README.md
├── envs
│   ├── dev
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   └── version.tf
│   └── stg
│       ├── backend.tf
│       ├── main.tf
│       ├── provider.tf
│       └── version.tf
└── modules
    ├── alb
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variable.tf
    ├── ecs
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variable.tf
    └── vpc
        ├── main.tf
        ├── outputs.tf
        └── variable.tf

7 directories, 18 files
```