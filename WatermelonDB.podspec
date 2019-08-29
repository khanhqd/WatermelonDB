require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name            = "WatermelonDB"
  s.version         = version
  s.homepage        = "https://github.com/luongbang152/react-native-admob"
  s.summary         = "WatermelonDB"
  s.license         = "MIT"
  s.author          = { "Bang Nguyen" => "luongbang152@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.source          = { :git => "https://github.com/khanhqd/WatermelonDB.git" }
  s.source_files    = 'native/ios/WatermelonDB/*.{swift,h}', 'native/ios/WatermelonDB/FMDB/src/fmdb/*.{h,m}'
  s.preserve_paths  = "**/*.js"
  s.swift_version   = '4.0'
end