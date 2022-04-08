Pod::Spec.new do |s|
  s.name             = 'Yahoo-Mobile-SDK'
  s.version          = '1.0.0-beta1'
  s.summary          = 'Yahoo Mobile SDK'
  s.license          = { :type => 'Commercial', :file => 'LICENSE.txt' }
  s.description      = 'The Yahoo Mobile SDK is designed for publishers that are interested in incorporating Inline, Interstitial, and/or Native ads into their mobile applications.'
  s.homepage         = 'https://sdk.yahooinc.com/'
  s.author           = { 'Yahoo, Inc.' => 'MobileAdsSDK@yahooinc.com' }
  s.source           = { :http => "https://artifactory.yahooinc.com/artifactory/ios-artifacts-beta-local/ios-yahoo-mobile-sdk/1.0.0/ios-yahoo-mobile-sdk-cocoapods-1.0.0-beta1.zip", :sha256 => "f6919d9faa1b21ef667bdafe3a8d5f8cab5eef6d553e1f8a6959723c23937c6f", :flatten => true }
  s.requires_arc     = true
  s.platform         = :ios, "11.0"
  s.static_framework = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.resource         = "YahooMobileSDKResources.bundle"
  s.dependency 'Yahoo-Ads', '>= 1.2.0-beta', '<= 1.2.0'
end
