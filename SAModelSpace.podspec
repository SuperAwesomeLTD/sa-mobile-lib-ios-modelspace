Pod::Spec.new do |s|
  s.name = 'SAModelSpace'
  s.version = '1.0.1'
  s.summary = 'SAModelSpace contains the models for SuperAwesome'
  s.description = <<-DESC
    SAModelSpace contains all the required models for the SuperAwesome SDK.
                       DESC
  s.homepage = 'https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-modelspace'
  s.license = { 
	:type => 'GNU LESSER GENERAL PUBLIC LICENSE Version 3', 
	:file => 'LICENSE' 
  }
  s.author = { 
	'Gabriel Coman' => 'gabriel.coman@superawesome.tv' 
  }
  s.source = { 
	:git => 'https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-modelspace.git', 
	:branch => 'master',
 	:tag => '1.0.1' 
  }
  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'SAJsonParser', '1.3.6'
  s.dependency 'SAUtils', '1.5.6'
end
