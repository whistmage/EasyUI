#
#  Be sure to run `pod spec lint EasyUI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "EasyUI"
  spec.version      = "0.0.1"
  spec.summary      = "Swift library for UI"
  spec.description  = <<-DESC
      A small set of helpers for easier interface building.
                   DESC
  spec.homepage     = "https://github.com/whistmage/EasyUI"
  spec.license = 'MIT'
  spec.author             = { "Whistmage" => "whistmage@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"
  spec.source        = { :git => "https://github.com/whistmage/EasyUI.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "EasyUI/**/*.{h,m,swift}"
  spec.swift_version = "4.2"
end
