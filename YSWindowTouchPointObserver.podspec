Pod::Spec.new do |s|
  s.name = 'YSWindowTouchPointObserver'
  s.version = '0.0.1'
  s.summary = 'Touch point observer of UIWindow.'
  s.homepage = 'https://github.com/yusuga/YSWindowTouchPointObserver'
  s.license = 'MIT'
  s.author = 'Yu Sugawara'
  s.source = { :git => 'https://github.com/yusuga/YSWindowTouchPointObserver.git', :tag => '0.0.1' }
  s.platform = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source_files = 'Classes/YSWindowTouchPointObserver/*.{h,m}'
  s.requires_arc = true    
end