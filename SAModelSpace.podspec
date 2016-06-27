
Pod::Spec.new do |s|
  s.name             = 'SAModelSpace'
  s.version          = '0.1.0'
  s.summary          = 'SAModelSpace contains the models for SuperAwesome'
  s.description      = <<-DESC
SAModelSpace contains all the required models for the SuperAwesome SDK.
                       DESC
  s.homepage         = 'https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-modelspace'
  s.license          = { :type => 'GNU GENERAL PUBLIC LICENSE Version 3', :file => 'LICENSE' }
  s.author           = { 'Gabriel Coman' => 'gabriel.coman@superawesome.tv' }
  s.source           = { :git => 'https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-modelspace.git', :tag => "0.1.0" }
  s.ios.deployment_target = '6.0'
  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'SAJsonParser'
end
