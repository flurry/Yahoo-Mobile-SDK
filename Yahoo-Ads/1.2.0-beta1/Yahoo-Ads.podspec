Pod::Spec.new do |s|
  s.name             = 'Yahoo-Ads'
  s.version          = '1.2.0-beta1'
  s.summary          = 'Yahoo Ads SDK'
  s.license          = { :type => 'Commercial', :file => 'LICENSE.txt' }
  s.description      = 'Yahoo Ads SDK helps publishers monetize their apps through in-app advertising using inline, interstitial static and video as well as native ads.'
  s.homepage         = 'https://sdk.yahooinc.com/'
  s.author           = { 'Yahoo, Inc.' => 'MobileAdsSDK@yahooinc.com' }
  s.source           = { :http => "https://artifactory.yahooinc.com/artifactory/ios-artifacts-beta-local/ios-yahoo-ads-sdk/1.2.0/ios-yahoo-ads-sdk-cocoapods-1.2.0-beta1.zip", :sha256 => "7c022e5b5b6517636e88bafa5f48203f9d540990d48e1b35cfaa19a93c7f45d3", :flatten => true }
  s.requires_arc     = true
  s.platform         = :ios, "10.0"
  s.ios.vendored_frameworks = "YahooAds.xcframework"
  s.static_framework = true
  s.source_files     = 'dummy.swift'
  s.swift_version    = "5.0"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.resource = "YahooAdsResources.bundle"
  s.dependency 'Flurry-iOS-SDK/FlurrySDK', '~> 11.4'
end