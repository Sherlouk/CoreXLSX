// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
  name: "CoreXLSX",
  platforms: [
    .macOS(.v10_13),
    .iOS(.v12),
    .tvOS(.v12),
    .watchOS(.v4),
  ],
  products: [
    // Products define the executables and libraries produced by a package,
    // and make them visible to other packages.
    .library(
      name: "CoreXLSX",
      targets: ["CoreXLSX"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/maxdesiatov/XMLCoder.git", from: "0.17.1"),
    .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.19"),
    .package(url: "https://github.com/apple/swift-log.git", from: "1.6.2"),
  ],
  targets: [
    .target(
      name: "CoreXLSX",
      dependencies: [
        .product(name: "XMLCoder", package: "XMLCoder"),
        .product(name: "ZIPFoundation", package: "ZIPFoundation"),
        .product(name: "Logging", package: "swift-log"),
      ]
    ),
    .testTarget(
      name: "CoreXLSXTests",
      dependencies: [
        .target(name: "CoreXLSX")
      ]
    ),
  ]
)
