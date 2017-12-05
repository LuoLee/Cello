# Cello

[![CI Status](http://img.shields.io/travis/lilo/Cello.svg?style=flat)](https://travis-ci.org/lilo/Cello)
[![Version](https://img.shields.io/cocoapods/v/Cello.svg?style=flat)](http://cocoapods.org/pods/Cello)
[![License](https://img.shields.io/cocoapods/l/Cello.svg?style=flat)](http://cocoapods.org/pods/Cello)
[![Platform](https://img.shields.io/cocoapods/p/Cello.svg?style=flat)](http://cocoapods.org/pods/Cello)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Cello is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Cello'
```

## Example

Examples
--------

```c
#include "Cello.h"

int main(int argc, char** argv) {

  /* Stack objects are created using "$" */
  var i0 = $(Int, 5);
  var i1 = $(Int, 3);
  var i2 = $(Int, 4);

  /* Heap objects are created using "new" */
  var items = new(Array, Int, i0, i1, i2);
  
  /* Collections can be looped over */
  foreach (item in items) {
    print("Object %$ is of type %$\n",
      item, type_of(item));
  }
  
  /* Heap objects destructed via Garbage Collection */
  return 0;
}
```

```c
#include "Cello.h"

int main(int argc, char** argv) {
  
  /* Shorthand $ can be used for basic types */
  var prices = new(Table, String, Int);
  set(prices, $S("Apple"),  $I(12)); 
  set(prices, $S("Banana"), $I( 6)); 
  set(prices, $S("Pear"),   $I(55)); 

  /* Tables also support iteration */
  foreach (key in prices) {
    var val = get(prices, key);
    print("Price of %$ is %$\n", key, val);
  }
  
  return 0;
}
```

## Author

lilo, luolee.me@gmail.com

## Thanks
[orangeduck/Cello](https://github.com/orangeduck/Cello)

## License

Cello is available under the MIT license. See the LICENSE file for more info.
