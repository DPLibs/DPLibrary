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
[**AppServerConfiguration**](DPLibrary/Classes/AppServerConfiguration.swift) - struct for defining the application remote server configuration.<br/>
[**DateFormatType**](DPLibrary/Classes/DateFormatType.swift) - struct for storing preset values for dateFormat in DateFromatter.<br/>
[**Distance**](DPLibrary/Classes/Distance.swift) - struct for defining the distance.<br/>
[**DPStoredParameter**](DPLibrary/Classes/DPStoredParameter.swift) - struct for defining the stored parameter with generic type `ParameterType`. <br/>
[**ImageModel**](DPLibrary/Classes/ImageModel.swift) - struct for defining the image.<br/>
[**Time**](DPLibrary/Classes/Time.swift) - struct for determining the time.<br/>
[**TimeUnit**](DPLibrary/Classes/TimeUnit.swift) - struct for determining the time interval unit.<br/>
[**FieldValidation**](DPLibrary/Classes/FieldValidation)<br/>

### Enums

[**AppVersion**](DPLibrary/Enums/AppVersion.swift) - enum for determining the application version.<br/>
[**Environment**](DPLibrary/Enums/Environment.swift) - enum for determining the application environment.<br/>
[**PlayState**](DPLibrary/Enums/PlayState.swift) - enum for determining the play state.<br/>
[**ScreenOffset**](DPLibrary/Enums/ScreenOffset.swift) - enum for determining the screen offset.<br/>
[**WeekDay**](DPLibrary/Enums/WeekDay.swift) - enum for determining the week day type.<br/>

### Extensions

[**Array**](DPLibrary/Extensions/Array+Extensions.swift)<br/>
[**Collection**](DPLibrary/Extensions/Collection+Extensions.swift)<br/>
[**Date**](DPLibrary/Extensions/Date+Extensions.swift)<br/>
[**Encodable**](DPLibrary/Extensions/Encodable+Extensions.swift)<br/>
[**FileManager**](DPLibrary/Extensions/FileManager+Extensions.swift)<br/>
[**NotificationCenter**](DPLibrary/Extensions/NotificationCenter+Extensions.swift)<br/>
[**NSMutableAttributedString**](DPLibrary/Extensions/NSMutableAttributedString+Extensions.swift)<br/>
[**String**](DPLibrary/Extensions/String+Extensions.swift)<br/>
[**UIApplication**](DPLibrary/Extensions/UIApplication+Extensions.swift)<br/>
[**UIButton**](DPLibrary/Extensions/UIButton+Extensions.swift)<br/>
[**UICollectionView**](DPLibrary/Extensions/UICollectionView+Extensions.swift)<br/>
[**UIImage**](DPLibrary/Extensions/UIImage+Extensions.swift)<br/>
[**UIImageView**](DPLibrary/Extensions/UIImageView+Extensions.swift)<br/>
[**UILabel**](DPLibrary/Extensions/UILabel+Extensions.swift)<br/>
[**UIStackView**](DPLibrary/Extensions/UIStackView+Extensions.swift)<br/>
[**UITableView**](DPLibrary/Extensions/UITableView+Extensions.swift)<br/>
[**UITapGestureRecognizer**](DPLibrary/Extensions/UITapGestureRecognizer+Extensions.swift)<br/>
[**UIView**](DPLibrary/Extensions/UIView+Extensions.swift)<br/>
[**UIViewController**](DPLibrary/Extensions/UIViewController+Extensions.swift)<br/>

### Protocols

[**DPLoggable**](DPLibrary/Protocols/DPLoggable.swift) - protocol for print log in console.<br/>
[**CreateOrDefaultInitable**](DPLibrary/Protocols/CreateOrDefaultInitable.swift) - protocol allows you to create `Self` from the optional `rawValue` or return the default value.<br/>
[**NumberAdduction**](DPLibrary/Protocols/NumberAdduction/NumberAdduction.swift) - protocol for number adduction.<br/>
[**NumberAdductionOptional**](DPLibrary/Protocols/NumberAdduction/NumberAdductionOptional.swift) - protocol for number adduction optional.<br/>
