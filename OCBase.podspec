#
# Be sure to run `pod lib lint AdBanaSDKSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCBase'
  s.version          = '0.1.0'
  s.summary          = 'OCBase'
  s.description      = 'This is OCBase'

  s.homepage         = 'http://www.adbana.com/'
  s.license          = { :type => 'MIT', :text => ''}
  s.author           = { 'InsectQY' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/yushengr/OCBase.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Classes/**'

  s.dependency 'DZNEmptyDataSet'
  s.dependency 'YTKNetwork'
  s.dependency 'JXCategoryView'
  s.dependency 'OCThirdParty'
  s.dependency 'coobjc'

end
