# CompatAlert

## Description
CompatAlert is an alert comes in handy when your app supports IOS 7+, CompatAlert will check if the iOS version is 7 and then it will show an AlertView, Also if its iOS 8+ it will present AlertController. CompatAlert came to simplify showing alerts and just in a single line from your base viewcontroller.

## Preview Demo
<img src="https://lh3.googleusercontent.com/hJskdPud9xE2s1_oE0q1-anH3MhCPVPkrZa8izb_QSTyXzpRhU4VqQ=w792-h642-p-b1-c0x00999999">

## How to use CompatAlert ##
##### 1) import ```CompatAlert.swift``` into your project <br/>
#####2) Show Alert:<br/><br/>     2.1) Without Action: buttonTitleYes should be empty string and the tag could be any integer and will not be checked, be default pass 0 <br/>

``CompatAlert.instance.showAlert("Sorry", message: "This is just a simple message !", buttonTitleYes: "", buttonTitleCancel: "OK", controller: self, tag: 0)``


##### 2.2) With Action: buttonTitleYes should be set and the tag will be checked in this case <br/> 

``CompatAlert.instance.showAlert("Sorry", message: "Please check your internet connection!", buttonTitleYes: "Retry", buttonTitleCancel: "Dismiss", controller: self, tag: 0)``

##Set Action for Buttons ##
Thier exist two methods first one is ``checkTagAndReturnAction`` which handles AlertController actions accourding to the tag, And AlertView delegate called ``clickedButtonAtIndex`` will handle AlertView actions.

## Download the project to understand more of how it works ##

## Requierments ##
* Swift 2.0+
* IOS 7.0+

## License ##

The MIT License (MIT)

Copyright (c) AaoIi 2015

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
