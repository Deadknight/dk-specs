#
# Be sure to run `pod lib lint topping.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Topping'
  s.version          = '0.1.6'
  s.summary          = 'ToppingEngine is a library helps you create mobile applications using one type of layout code and one type of backend code.'
  s.description      = <<-DESC
ToppingEngine is a library helps you create mobile applications using one type of layout code and one type of backend code.
All you need to know is how Android layout XML works and basic Lua or Kotlin knowledge.
If you know how to write Android code, learning curve of this engine is very simple. Layout is the same of Android. Backend functions are similar to Android functions too.
                       DESC

  s.homepage         = 'https://topping.dev'
  s.license          = { :type => 'Creative Commons License', :file => 'LICENSE' }
  s.author           = { 'topping dev' => 'toppingdev@gmail.com' }
  s.platform         = :ios
  #s.source           = { :http => 'https://github.com/topping-dev/topping-ios/releases/download/v0.1.5/topping.zip' }
  #s.source            = { :http => 'https://github.com/Deadknight/topping-ios-local/releases/download/v0.1.4/topping.zip' }
  s.source = { :http=> 'https://localhost:8080/topping.zip' }
  
  #s.social_media_url = 'https://www.twitter.com/toppingdev'

  s.dependency 'Toaster', '2.3.0'
  s.dependency 'GDataXML-HTML', '1.4.1'
  s.dependency 'ActionSheetPicker-3.0', '2.5.0'
  s.dependency 'MBProgressHUD', '1.2.0'
  s.dependency 'Material', '3.1.8'
  s.dependency 'MaterialComponents/ActivityIndicator', '113.2'
  
  s.vendored_frameworks = 'Topping.framework'
  s.ios.deployment_target = '10.0'
  s.swift_versions = '4.0'
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

end
