#
# Be sure to run `pod lib lint Modernistik.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Modernistik'
  s.version          = '0.4.5'
  s.summary          = 'Swift design patterns, sugars and extensions for Modernistik development.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Swift design patterns, sugars and extensions for Modernistik development. A collection
  of best practices and standard classes used when developing client applications in iOS, macOS and tvOS.
                       DESC

  s.homepage         = 'https://github.com/modernistik/cocoa'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'Proprietary'
  s.author           = { 'Modernistik' => 'contact@modernistik.com' }
  s.source           = { :git => 'https://github.com/modernistik/cocoa.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/modernistik'

  s.default_subspec = 'Core'
  s.swift_version = '4.2'
  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '11.0'

  s.subspec 'Core' do |cs|
    cs.source_files = 'Modernistik/Core/**/*'
  end

  s.subspec 'Hyperdrive' do |cs|
    cs.dependency 'Modernistik/Core'
    cs.dependency 'Parse', '>= 1.17'
    cs.dependency 'TimeZoneLocate', '>= 0.4'
    cs.ios.source_files = 'Modernistik/Hyperdrive/**/*'
  end
  # s.resource_bundles = {
  #   'Modernistik' => ['Modernistik/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
# To publish `pod trunk push Modernistik.podspec`
# https://guides.cocoapods.org/making/getting-setup-with-trunk.html
# Register a new authentication token: pod trunk register persaud@modernistik.com 'Anthony Persaud' --description='Macbook'
