Pod::Spec.new do |s|

  s.name         = "LJUserDefaultsUtils"
  s.version      = "1.0.0"
  s.summary      = "This is such a LJUserDefaultsUtils framework. Yah mon!"
  s.description  = "This is some super LJUserDefaultsUtils framework.This can support saving data types like Bool, Dictionary, Int, String, Data, andArray."
  s.homepage     = "https://github.com/lintocj/LJUserDefaultsUtils"
  s.license      = "MIT"
  s.author       = { "Linto Jacob" => "lintojacob2009@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/lintocj/LJUserDefaultsUtils.git", :tag => "1.0.0" }
  s.source_files = "LJUserDefaultsUtils/**/*.swift"
  s.swift_version = "5.0"
  s.frameworks = "UIKit"

end
