// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "M",
  products: [
    .library(
      name: "M",
      targets: ["M"]
    ),
  ],
  dependencies: [

  ],
  targets: [
    .target(
      name: "M",
      dependencies: []
    )
  ],
  swiftLanguageVersions: [.v5]
)
