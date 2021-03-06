Pod::Spec.new do |s|
  s.name             = "RxCodable"
  s.version          = "0.2.0"
  s.summary          = "RxSwift wrapper for Codable"
  s.homepage         = "https://github.com/devxoul/RxCodable"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Suyeol Jeon" => "devxoul@gmail.com" }
  s.source           = { :git => "https://github.com/devxoul/RxCodable.git",
                         :tag => s.version.to_s }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.11"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "Sources/RxCodable/**/*.swift"
    ss.frameworks   = "Foundation"
    ss.dependency "RxSwift", ">= 4.0.0-beta.0"
  end

  s.subspec "Moya" do |ss|
    ss.source_files = "Sources/RxCodableMoya/**/*.swift"
    ss.dependency "RxCodable/Core"
    ss.dependency "Moya"
  end
end
