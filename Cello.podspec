#
# Be sure to run `pod lib lint Cello.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Cello'
  s.version          = '0.1.2'
  s.summary          = 'Cello is a library that brings higher level programming to C.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Cello is a library that brings higher level programming to C.

By acting as a modern, powerful runtime system Cello makes many things easy that were previously impractical or awkward in C such as:

    Generic Data Structures
    Polymorphic Functions
    Interfaces / Type Classes
    Constructors / Destructors
    Optional Garbage Collection
    Exceptions
    Reflection

And because Cello works seamlessly alongside standard C you get all the other benefits such as great performance, powerful tooling, and extensive libraries.
                       DESC

  s.homepage         = 'https://github.com/LuoLee/Cello'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lilo' => 'luolee.me@gmail.com' }
  s.source           = { :git => 'https://github.com/LuoLee/Cello.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '6.0'

  s.preserve_paths = 'Cello.framework/*'
  s.public_header_files = 'Cello.framework/Versions/A/Headers/*.h'
  s.source_files = 'Cello.framework/Versions/A/Headers/*.h'
  s.vendored_frameworks = "Cello.framework"
  
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
