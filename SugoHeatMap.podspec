
Pod::Spec.new do |spec|
spec.name                  = 'Sugo-heatmap-sdk'
spec.module_name           = 'HeatMap'
spec.version               = '1.0.0'
spec.license               = 'Apache License, Version 2.0'
spec.summary               = 'Official Sugo SDK for iOS (Objective-C)'
spec.homepage              = 'https://github.com/Datafruit/SugoHeatMap.git'
spec.author                = { 'sugo.io' => 'developer@sugo.io' }
spec.source                = { :git => 'https://github.com/Datafruit/SugoHeatMap.git', :tag => spec.version ,:branch => 'master-first_submit'}
spec.ios.deployment_target = '8.0'
spec.default_subspec       = 'core'

spec.subspec 'core' do |core|
    core.source_files           = 'HeatMap/**/*.{m,h}'
    core.libraries              = 'icucore'
    core.dependency 'sugo-objc-sdk','3.5.9.4'
    core.frameworks             = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore', 'WebKit', 'CoreData', 'CoreLocation'
end

end
