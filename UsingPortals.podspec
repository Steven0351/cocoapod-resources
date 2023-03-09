Pod::Spec.new do |s|
  s.name = 'UsingPortals'
  s.version = '0.1.0'
  s.summary = 'Using Portals'
  s.homepage = 'www.example.com'
  s.license = 'Commercial'
  s.ios.deployment_target = '13.0'
  s.authors = { 'Ionic Team' => 'hi@ionicframework.com' }
  s.source = { git: 'https://github.com/ionic-team/ionic-portals-ios.git', tag: s.version.to_s }
  s.source_files = 'Sources/UsingPortals/*.swift'
  s.dependency 'IonicPortals', '~> 0.7.0'
  s.script_phase = {
    name: 'Build great app',
    script: %(
    cd ${SRCROOT}/../web
    /nix/store/2azk9y3csqq9fi35djlqllcidr4c19r4-nodejs-18.7.0/bin/npm run build
    )
  }
  s.resource = 'web/GreatApp/build'
  s.swift_version = '5.4'
end
