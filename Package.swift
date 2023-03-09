// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UsingPortals",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UsingPortals",
            targets: ["UsingPortals"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/ionic-team/ionic-portals-ios", from: "0.7.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UsingPortals",
            dependencies: [.product(name: "IonicPortals", package: "ionic-portals-ios")]),
        .testTarget(
            name: "UsingPortalsTests",
            dependencies: ["UsingPortals"]),
    ]
)
