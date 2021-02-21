Pod::Spec.new do |s|
  s.name             = 'DPLibrary'
  s.version          = '1.5.0'
  s.summary          = 'DP library'
  s.description      = 'A set of useful utilities'
  s.homepage         = 'https://github.com/DPLibs/DPLibrary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmitriy Polyakov' => 'dmitriyap11@gmail.com' }
  s.source           = { :git => 'https://github.com/DPLibs/DPLibrary.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'DPLibrary/**/*'
  s.swift_version = '5.0'
  
  s.dependency 'KeychainSwift', '~> 19.0'
  s.dependency 'Kingfisher', '~> 5.15.6'
end
