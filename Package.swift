// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "CryptoSwift",
  platforms: [
    .macOS(.v10_12), .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(
      name: "CryptoSwift",
      targets: ["CryptoSwift"]
    ),
    .library(
      name: "CryptoSwift-Static",
      type: .static,
      targets: ["CryptoSwift"]
    ),
    .library(
      name: "CryptoSwift-Dynamic",
      type: .dynamic,
      targets: ["CryptoSwift"]
    )
  ],
  targets: [
    .target(name: "CryptoSwift"),
    .testTarget(name: "CryptoSwiftTests", dependencies: ["CryptoSwift"]),
    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift"])
  ],
  swiftLanguageVersions: [.v5]
)
