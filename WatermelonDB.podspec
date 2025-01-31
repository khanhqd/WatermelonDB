require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name            = "WatermelonDB"
  s.version         = version
  s.homepage        = "https://github.com/luongbang152/react-native-admob"
  s.summary         = "WatermelonDB"
  s.license         = "MIT"
  s.author          = { "Bang Nguyen" => "luongbang152@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source          = { :git => "https://github.com/khanhqd/WatermelonDB.git" }
  s.source_files    = 'native/ios/WatermelonDB/*.{swift,h}', 'native/ios/WatermelonDB/FMDB/src/fmdb/*.{h,m}'
  s.preserve_paths  = "**/*.js"
  s.swift_version   = '4.0'

  # s.public_header_files = 'React/RCTBridgeModule.h'
  s.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/React/RCTBridgeModule.h\"", "SWIFT_OBJC_BRIDGING_HEADER" => "$(PODS_ROOT)/React/RCTBridgeModule.h" }
  # s.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\" \"$(PODS_ROOT)/Folly\"" }

  # s.frameworks = 'React'
  # s.vendored_frameworks 

  s.dependency 'React'

end