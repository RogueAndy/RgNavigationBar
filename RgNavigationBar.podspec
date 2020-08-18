Pod::Spec.new do |s|

  s.name         = "RgNavigationBar"
  s.version      = "0.0.1"
  s.summary      = "导航栏控件"
  s.description  = <<-DESC
                    关于导航栏控件
                   DESC

  s.homepage     = "https://rogueandy.github.io"
  s.license      = "MIT"
  s.author       = { "Rogue" => "619455850@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/RogueAndy/RgNavigationBar.git", :tag => "#{s.version}" }

  s.source_files  = "ScNavigationBar/*"
  s.public_header_files = "ScNavigationBar/*.h"
  s.resource = "ScNavigationBar/ScNavigationBar.bundle"

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "RgBaseObject"
end
