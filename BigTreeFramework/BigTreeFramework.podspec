
Pod::Spec.new do |spec|



  spec.name         = "BigTreeFramework"
  spec.version      = "1.0.0"
  spec.summary      = "Rick framwork"

  spec.description  = "BigTree framework test"

  spec.homepage     = "https://github.com/rick205w/BigTreeFramwork.git"
  spec.license      = "MIT"
  spec.author       = { "Rick" => "rick5566w@gmail.com"}
  spec.swift_version = "4.0"
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/rick205w/BigTreeFramwork.git", :tag => "1.0.0" }
  spec.source_files  = "BigTreeFramework/**/*.{h,m,swift}"
  spec.framework = "UIKit"



end
