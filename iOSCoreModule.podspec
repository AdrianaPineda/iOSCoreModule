#
#  Be sure to run `pod spec lint iOSCoreModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "iOSCoreModule"
  spec.version      = "0.14.10"
  spec.summary      = "Sample po that includes Core and optional doc module"
  spec.description  = "Custom sample sdk cocoapods to test core and optional module. Includes core and optional doc module"
  spec.homepage     = "https://github.com/AdrianaPineda/iOSCoreModule"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "apineda-truora" => "apineda@truora.com" }
  spec.user_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC -lc++ -lz',
      'CLANG_MODULES_AUTOLINK' => 'YES'
  }
  spec.source       = { :git => "https://github.com/AdrianaPineda/iOSCoreModule.git", :tag => "#{spec.version.to_s}" }
  spec.ios.deployment_target = "11.0"

  spec.subspec 'iOSCoreOnlyModule' do |subspec|
    subspec.vendored_frameworks = ['Products/iOSCoreModule.xcframework']
  end

  spec.subspec 'iOSDocModule' do |subspec|
    subspec.vendored_frameworks = ['Products/iOSDocModule.xcframework']
  end

  spec.subspec 'iOSCommonModule' do |subspec|
    subspec.vendored_frameworks = ['Products/iOSCommonModule.xcframework']
  end
end
