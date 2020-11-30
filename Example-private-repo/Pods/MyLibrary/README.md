# MyLibrary

## Quick start

Run with local cocoapods lib, clone the repo, and run `pod install` from the Example directory first.

Run with private repo cocoapods lib, clone the repo, and run `pod install` from the Example-private-repo directory first.

## Create a cocoapods lib

```bash
pod lib create MyLibrary
```

Reference
<https://guides.cocoapods.org/making/using-pod-lib-create.html>

## create the private repo

- push lib to github <https://github.com/differentialmanifold/CocoapodsDemoMyLibrary>, push a tag equal to lib's version

- change [MyLibrary.podspec](https://github.com/differentialmanifold/CocoapodsDemoMyLibrary/blob/main/MyLibrary.podspec)

    ```ruby
    s.homepage         = 'https://github.com/differentialmanifold/CocoapodsDemoMyLibrary'
    s.source           = { :git => 'https://github.com/differentialmanifold/CocoapodsDemoMyLibrary.git', :tag => s.version.to_s }
    ```

- run `pod lib lint MyLibrary.podspec` to ensure this is a valid spec

- create a cocoapods private repo <https://gitee.com/differentialmanifold/cocoa-pods-specs.git> with a `Readme.md`

- push `.podspec` to cocoapods private repo

    ```bash
    pod repo add dy-demospecs git@gitee.com:differentialmanifold/cocoa-pods-specs.git

    pod repo push dy-demospecs ./MyLibrary.podspec
    ```

- then in `Example-private-repo` project, you can refer MyLibrary in podfile

    ```ruby
    source 'https://gitee.com/differentialmanifold/cocoa-pods-specs.git'
    source 'https://github.com/CocoaPods/Specs.git'

    target 'Example-private-repo' do
    pod 'MyLibrary', '0.1.0'
    end
    ```

- Reference
<https://guides.cocoapods.org/making/private-cocoapods>

## Author

differentialmanifold, differentialmanifold@gmail.com

## License

MyLibrary is available under the MIT license. See the LICENSE file for more info.
