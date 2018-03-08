#
# Be sure to run `pod lib lint EZLottieExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EZLottieExtension'
  s.version          = '0.2.0'
  s.summary          = 'EZLottieExtension extends UIView with Lottie features.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
EZLottieExtension extends UIView type including a function to add Lottie animations to a view by centralizing it and giving the user option to determine the animation scale. This extension is very handy when creating buttons. By simply adding an animation to a button EZLottieExtension will align the animation fix it´s interaction behavior and include haptic feedback for pressing action.
                       DESC

  s.homepage         = 'https://github.com/dbarbos/EZLottieExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dbarbos' => 'diler@cappriola.com' }
  s.source           = { :git => 'https://github.com/dbarbos/EZLottieExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.0" }

  s.source_files = 'EZLottieExtension/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EZLottieExtension' => ['EZLottieExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'lottie-ios', '~> 2.5.0'
end
