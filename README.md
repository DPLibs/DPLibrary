# DPLibrary

[![CI Status](https://img.shields.io/travis/dmitriyap11/DPLibrary.svg?style=flat)](https://travis-ci.org/dmitriyap11/DPLibrary)
[![Version](https://img.shields.io/cocoapods/v/DPLibrary.svg?style=flat)](https://cocoapods.org/pods/DPLibrary)
[![License](https://img.shields.io/cocoapods/l/DPLibrary.svg?style=flat)](https://cocoapods.org/pods/DPLibrary)
[![Platform](https://img.shields.io/cocoapods/p/DPLibrary.svg?style=flat)](https://cocoapods.org/pods/DPLibrary)

## Installation

DPLibrary is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DPLibrary'
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Dmitriy Polyakov, dmitriyap11@gmail.com

DPLibrary is available under the MIT license. See the LICENSE file for more info.

## Features

### Classes

[**Angle**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/Angle.swift) - struct for defining the geometric angle.<br/>
[**AnimationInfo**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/AnimationInfo.swift) - struct for for defining basic animation properties.<br/>
[**AppServerConfiguration**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/AppServerConfiguration.swift) - struct for defining the application remote server configuration.<br/>
[**DateFormatType**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/DateFormatType.swift) - struct for storing preset values for dateFormat in DateFromatter.<br/>
[**Distance**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/Distance.swift) - struct for defining the distance.<br/>
[**DPStoredParameter**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/DPStoredParameter.swift) - struct for defining the stored parameter with generic type `ParameterType`. <br/>
[**Handlers**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/Handlers.swift) - class for creating and managing a list of closures.<br/>
[**ImageModel**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/ImageModel.swift) - struct for defining the image.<br/>
[**KeyboardInfo**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/KeyboardInfo.swift) -struct contains basic information about the appearance / disappearance of the keyboard, which it receives from keyboard notifications.<br/>
[**Time**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/Time.swift) - struct for determining the time.<br/>
[**TimeStamp**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/TimeStamp.swift) - struct for determining the timeStamp.<br/>
[**TimeUnit**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Classes/TimeUnit.swift) - struct for determining the time interval unit.<br/>

### Enums

[**AppVersion**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/AppVersion.swift) - enum for determining the application version.<br/>
[**Environment**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/Environment.swift) - enum for determining the application environment.<br/>
[**PlayState**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/PlayState.swift) - enum for determining the play state.<br/>
[**ScreenOffset**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/ScreenOffset.swift) - enum for determining the screen offset.<br/>
[**ViewControllerShowType**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/ViewControllerShowType.swift) - enum for determining the ViewController show type.<br/>
[**ViewState**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/ViewState.swift) - enum for determining the state of view.<br/>
[**WeekDay**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Enums/WeekDay.swift) - enum for determining the week day type.<br/>

### Extensions

[**Array**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Array+Extensions.swift)<br/>
[**Calendar**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Calendar+Extensions.swift)<br/>
[**Collection**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Collection+Extensions.swift)<br/>
[**Date**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Date+Extensions.swift)<br/>
[**Dictionary**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Dictionary+Extensions.swift)<br/>
[**Encodable**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/Encodable+Extensions.swift)<br/>
[**FileManager**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/FileManager+Extensions.swift)<br/>
[**NotificationCenter**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/NotificationCenter+Extensions.swift)<br/>
[**NSMutableAttributedString**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/NSMutableAttributedString+Extensions.swift)<br/>
[**String**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/String+Extensions.swift)<br/>
[**UIApplication**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIApplication+Extensions.swift)<br/>
[**UIButton**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIButton+Extensions.swift)<br/>
[**UICollectionView**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UICollectionView+Extensions.swift)<br/>
[**UIImage**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIImage+Extensions.swift)<br/>
[**UIImageView**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIImageView+Extensions.swift)<br/>
[**UILabel**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UILabel+Extensions.swift)<br/>
[**UIStackView**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIStackView+Extensions.swift)<br/>
[**UITableView**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UITableView+Extensions.swift)<br/>
[**UITableViewCell**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UITableViewCell+Extensions.swift)<br/>
[**UITapGestureRecognizer**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UITapGestureRecognizer+Extensions.swift)<br/>
[**UIView**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIView+Extensions.swift)<br/>
[**UIViewController**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Extensions/UIViewController+Extensions.swift)<br/>

### Protocols

[**CreateOrDefaultInitable**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/CreateOrDefaultInitable.swift) - protocol allows you to create `Self` from the optional `rawValue` or return the default value.<br/>
[**DateAdduction**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/DateAdduction.swift) - protocol for converting to `Date`.<br/>
[**DPLoggable**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/DPLoggable.swift) - protocol for print log in console.<br/>
[**JsonCoding**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/JsonCoding.swift) - protocol for encoding `Json`.<br/>
[**Mathematical**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/NumberAdduction/Mathematical.swift) - protocol for the implementation of mathematical operations.<br/>
[**TimeStructAdduction**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/NumberAdduction/TimeStructAdduction.swift) - protocol for time structs adduction.<br/>
[**ZeroAdduction**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/NumberAdduction/ZeroAdduction.swift) - protocol for converting to `zero` for `Self`.<br/>
[**NumberAdduction**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/NumberAdduction/NumberAdduction.swift) - protocol for number adduction.<br/>
[**NumberAdductionOptional**](https://github.com/DPLibs/DPLibrary/blob/develop/DPLibrary/Protocols/NumberAdduction/NumberAdductionOptional.swift) - protocol for number adduction optional.<br/>
