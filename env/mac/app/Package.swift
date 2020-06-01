// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "Meditations",
  products: [

  ],
  dependencies: [
    .package(
      path: "../lib"
    )
  ],
  targets: [
    .target(
      name: "Meditations",
      dependencies: ["M"]
    )
  ],
  swiftLanguageVersions: [.v5]
)
