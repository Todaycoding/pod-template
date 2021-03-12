pod-template
============

# pod-template

> GitHub repo：https://github.com/CocoaPods/pod-template

### 调整说明

- 移除官方源模板工程的pch文件文件
- `iOS`部署版本从8.0提升到9.0。
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

>`$ pod lib create ProjectName --template-url = https://github.com/Todaycoding/pod-template`

## Requirements:

- CocoaPods 1.9.0+


## Getting started

There are two reasons for wanting to work on this template, making your own or improving the one for everyone's. In both cases you will want to work with the ruby classes inside the `setup` folder, and the example base template that it works on from inside `template/ios/`. 

## Best practices

The command `pod lib create` aims to be ran along with this guide: https://guides.cocoapods.org/making/using-pod-lib-create.html so any changes of flow should be updated there also.

It is open to communal input, but adding new features, or new ideas are probably better off being discussed in an issue first. In general we try to think if an average Xcode user is going to use this feature or not, if it's unlikely is it a _very strongly_ encouraged best practice ( ala testing / CI. ) If it's something useful for saving a few minutes every deploy, or isn't easily documented in the guide it is likely to be denied in order to keep this project as simple as possible.

