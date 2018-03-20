#
# Be sure to run `pod lib lint AYImagePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AYImagePicker'
  s.version          = '0.1.0'
  s.summary          = 'This is a component include camera, library and video recoding Instagram-like customized by me.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =
'This is Instagram like camera component originally design by ytakzk and enhanced by YP, I am just customizing it and enhance some features.'

  s.homepage         = 'https://github.com/abdorahmanmahmoudd/AYImagePicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'abdorahmanmahmoudd' => 'abdorahmanmahmoudd@gmail.com' }
  s.source           = { :git => 'https://github.com/abdorahmanmahmoudd/AYImagePicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.vendored_frameworks = 'Example/YPImagePicker-2.7.2/4.0.3/Products/Library/Frameworks/YPImagePicker.framework', 'Example/YPImagePicker-2.7.2/Stevia-4.1.0/Carthage/Build/iOS/Stevia.framework'
  s.source_files = 'AYImagePicker/Classes/**/*', 'Example/**/*.{h,m,swift}', 'Example/YPImagePicker-2.7.2/Source/*.h'
  s.public_header_files = 'Example/YPImagePicker-2.7.2/Source/*.h'
  
  # s.resource_bundles = {
  #   'AYImagePicker' => ['AYImagePicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'YPImagePicker.framework', 'Stevia.framework'
  # s.dependency 'AFNetworking', '~> 2.3'
end
