Pod::Spec.new do |s|
  s.name             = 'OneMobileSDK-Xcode10GM'
  s.version          = '2.28.2631'
  s.summary          = 'OATH O2/Vidible Mobile SDK'
  s.license          = {
    type: 'Internal',
    text: 'Copyright 2018, Oath Inc.'
  }

  s.description = <<-DESC
  SDK provides possibility to play videos, control playback, gather metrics, play ads.
  Checkout https://github.com/aol-public/OneMobileSDK-playground-ios for up-to-date examples.
                       DESC

  s.homepage         = 'https://github.com/vidible/OneMobileSDK-releases/releases'
  s.authors          = {
    'Andrey Moskvin' => 'andrey.moskvin@oath.com',
    'Alexey Demedetskiy' => 'alexey.demedetskiy@oath.com',
    'Bogdan Bilonog' => 'bogdan.bilonog@oath.com',
    'Roman Tysiachnik' => 'roman.tysiachnik@oath.com'
  }

  s.source = {
    http: 'https://github.com/vidible/OneMobileSDK-releases/releases/download/2.28/OneMobileSDK-Xcode10GM.framework.zip'
  }

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.ios.vendored_frameworks = 'Carthage/Build/iOS/*.framework'
  s.tvos.vendored_frameworks = 'Carthage/Build/tvOS/*.framework'

  s.frameworks = 'CoreMedia', 'AVFoundation', 'CoreGraphics'
end
