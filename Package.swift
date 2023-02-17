// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let sdkName = "LocationFramework"
let binaryUrl = "https://admin-devrepo.kakaomobility.com/repository/LocationCocoaPod/locationsdk-ios/1.2.23/LocationFramework.xcframework.zip"
let checksum = "35b6f958dcc0351c26f6c1a9e06a14fce5101dc545fcfb6f546072e141631505"

let package = Package(
    name: sdkName,
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: sdkName,
            targets: [sdkName]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: sdkName, url: binaryUrl, checksum: checksum),
    ]
)
