// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "trySwiftColorKitPro",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "trySwiftColorKitPro",
            targets: ["trySwiftColorKitPro"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danielsaidi/trySwiftColorKit", .branch("workshop")),
    ],
    targets: [
        .binaryTarget(
            name: "trySwiftColorKitPro",
            path: "Sources/trySwiftColorKitPro.xcframework")
    ]
)
