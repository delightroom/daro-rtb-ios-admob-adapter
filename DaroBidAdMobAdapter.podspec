Pod::Spec.new do |s|
  s.name = 'DaroBidAdMobAdapter'
  s.version = '2.0.1'
  s.summary = 'DaroBid mediation adapter for Google Mobile Ads.'
  s.homepage = 'https://github.com/delightroom/daro-rtb-ios-admob-adapter'
  s.license = { :type => 'Custom', :file => 'DaroBidAdMobAdapter.xcframework/LICENSE.txt' }
  s.author = { 'Delightroom' => 'dev@delightroom.com' }
  s.source = { :http => 'https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.1/DaroBidAdMobAdapter-2.0.1.zip' }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.static_framework = true
  s.vendored_frameworks = 'DaroBidAdMobAdapter.xcframework'
  s.dependency 'DaroBid', '= 26.9.1700'
  s.dependency 'Google-Mobile-Ads-SDK', '= 13.0.0'
end
