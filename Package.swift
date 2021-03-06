// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "trySwiftColorKitPro",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "trySwiftColorKitPro",
            targets: ["trySwiftColorKitPro"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danielsaidi/trySwiftColorKit", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "trySwiftColorKitPro",
            path: "Sources/trySwiftColorKitPro.xcframework")
    ]
)
