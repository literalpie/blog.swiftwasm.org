// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "SwiftWasmBlog",
  platforms: [
    .macOS(.v10_12),
  ],
  products: [
    .executable(
      name: "SwiftWasmBlog",
      targets: ["SwiftWasmBlog"]
    ),
  ],
  dependencies: [
    .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0"),
    .package(url: "https://github.com/johnsundell/SplashPublishPlugin.git", from: "0.1.0"),
    .package(url: "https://github.com/SwiftyGuerrero/CNAMEPublishPlugin", from: "0.1.0"),
    .package(url: "https://github.com/finestructure/ImageAttributesPublishPlugin", from: "0.1.0"),
  ],
  targets: [
    .target(
      name: "SwiftWasmBlog",
      dependencies: [
        "Publish", "SplashPublishPlugin", "CNAMEPublishPlugin", "ImageAttributesPublishPlugin",
      ]
    ),
  ]
)
