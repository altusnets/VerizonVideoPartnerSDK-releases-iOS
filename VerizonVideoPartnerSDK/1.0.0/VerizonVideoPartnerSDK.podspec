Pod::Spec.new do |s|
  s.name             = 'VerizonVideoPartnerSDK'
  s.version          = '1.0.0'
  s.summary          = 'Verizon Video Partner SDK'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.swift_version    = '4.2'

  s.description = <<-DESC
  A native iOS SDK that makes it easy to play and monetize videos from the Verizon Video Partner network on iOS-based platforms. 
  You can find all details and tutorials in our repository https://github.com/VerizonAdPlatforms/VerizonVideoPartnerSDK-iOS/.
DESC

  s.homepage         = 'https://github.com/VerizonAdPlatforms/VerizonVideoPartnerSDK-iOS'

  s.authors          = {
    'Andrey Moskvin' => 'andrey.moskvin@oath.com',
    'Roman Tysiachnik' => 'roman.tysiachnik@oath.com',
    'Vladyslav Anokhin' => 'vladyslav.anokhin@oath.com'
  }

  s.source           = { git: 'https://github.com/VerizonAdPlatforms/VerizonVideoPartnerSDK-iOS.git',
                         tag: s.version.to_s }
  s.source_files     = 'sources/**/*.swift'
  s.exclude_files    = 'sources/utils/Utils.swift', 
                       'sources/utils/Recorder.swift', 
                       'sources/utils/ActionComparator.swift', 
                       'sources/**/*Test*', 
                       'sources/**/Contents.swift'

  s.ios.exclude_files  = 'sources/default controls'
  s.tvos.exclude_files = 'sources/custom controls', 
                         'sources/vpaid', 
                         'sources/metrics/open measurement'

  s.static_framework = true
  
  s.dependency 'VideoRenderer', '1.25'
  s.dependency 'PlayerCore', '1.0.2'
  s.ios.dependency 'PlayerControls', '1.27'
  s.ios.dependency 'OMSDK-Oath2', '1.0.0'

  s.ios.deployment_target  = '9.0'
  s.tvos.deployment_target = '9.0'

  s.frameworks     = 'CoreMedia', 'AVFoundation', 'CoreGraphics'
  s.ios.framework  = 'WebKit'
end
