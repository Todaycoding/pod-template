# pod-template

> GitHub repo：https://github.com/CocoaPods/pod-template

### 调整说明

- 移除官方源模板工程的pch文件文件
- `iOS`部署版本从8.0提升到10.0。
- `Swift3.0` 更新到 `Swift 5.0`
- 更新依赖库版本
	- "Nimble', '~> 8.1.1"
	- "Quick', '~> 3.0.0"
	- "Nimble-Snapshots' , '~> 8.1.1"
	- "FBSnapshotTestCase' , '~> 2.1.4"

An opinionated template for creating a Pod with the following features:

- Git as the source control management system
- Clean folder structure
- Project generation
- MIT license
- Testing as a standard
- Turnkey access to Travis CI
- Also supports Carthage

## Getting started

>`$ pod lib create ProjectName --template-url = https://gitub.com/DevDragonli/pod-template`

## Requirements:

- CocoaPods 1.9.0+
