# EasySegues

## Installation

EasySegues is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```sh
pod "EasySegues"
```

## How to use

Just call `performSegueWithIdentifier:` on your ViewController:


```sh
[yourController performSegueWithIdentifier:@"SomeSegueIdentifier"
                           prepareCallback:^(UIViewController *target) {
                              // Pass your data to 'target' etc.
                           }];
```

## Author

kdementiev, scorch1993@gmail.com

## License

EasySegues is available under the MIT license. See the LICENSE file for more info.
