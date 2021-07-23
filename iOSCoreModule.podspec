#
#  Be sure to run `pod spec lint iOSCoreModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "iOSCoreModule"
  spec.version      = "0.2.0"
  spec.summary      = "A short description of iOSCoreModule."
  spec.description  = "Custom sample sdk cocoapods"
  spec.homepage     = "https://github.com/AdrianaPineda/iOSCoreModule"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "apineda-truora" => "apineda@truora.com" }
  s.user_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC -lc++ -lz',
      'CLANG_MODULES_AUTOLINK' => 'YES'
  }
  spec.source       = { :git => "git@github.com:AdrianaPineda/iOSCoreModule.git", :tag => "#{spec.version.to_s}" }
  spec.ios.deployment_target = "9.0"

  s.subspec 'iOSCoreModule' do |subspec|
    subspec.vendored_frameworks = ['Products/iOSCoreModule.framework']
  end

  s.subspec 'iOSDocModule' do |subspec|
      subspec.vendored_frameworks = ['Products/iOSDocModule.framework']
  end

end
