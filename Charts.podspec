Pod::Spec.new do |s|
  s.name = "Charts"
  s.version = "2.2.5.1"
  s.summary = "Customized charts is a powerful & easy to use chart library for iOS, tvOS and OSX (and Android)"
  s.homepage = "https://github.com/convergeeducacao/Charts"
  s.license = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.authors = ""
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.11"
  s.source = { :git => "git@github.com:convergeeducacao/Charts.git", :tag => s.version.to_s }
  s.default_subspec = "Core"
  s.prepare_command = "sed -i '' -e 's/import Charts//g' ChartsRealm/Classes/**/*.swift"

  s.subspec "Core" do |ss|
    ss.source_files  = "Charts/Classes/**/*.swift"
  end

  s.subspec "Realm" do |ss|
    ss.source_files  = "ChartsRealm/Classes/**/*.swift"
    ss.dependency "Charts/Core"
    ss.dependency "RealmSwift", "~> 0.97"
  end
end
