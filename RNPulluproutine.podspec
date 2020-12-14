
Pod::Spec.new do |s|
  s.name         = "RNPulluproutine"
  s.version      = "1.0.0"
  s.summary      = "RNPulluproutine"
  s.description  = <<-DESC
                  RNPulluproutine
                   DESC
  s.homepage     = "https://github.com/xiaocui00/react-native-pulluproutine.git"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xiaocui00/react-native-pulluproutine.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'WechatOpenSDK', '~> 1.8.7.1'

end

  