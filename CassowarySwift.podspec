Pod::Spec.new do |s|
  s.name                   = "CassowarySwift"
  s.version                = "0.1.0"
  s.summary                = "Cassowary for Swift using cassowary.js"
  s.homepage               = "https://github.com/turbolent/CassowarySwift"
  s.license                = 'MIT'
  s.author                 = { "Bastian Müller" => "bastian@turbolent.com" }
  s.source                 = { :git => "https://github.com/turbolent/CassowarySwift.git", :tag => s.version.to_s }
  s.ios.deployment_target  = '7.0'
  s.osx.deployment_target  = '10.9'
  s.requires_arc           = true
  s.source_files           = 'Pod/Classes/**/*'
  s.resources              = 'Pod/Assets/**/*'
  s.frameworks             = 'JavaScriptCore'
end
