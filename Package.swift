// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoneyHashiOS",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MoneyHashiOS",
            targets: ["MoneyHashiOS"]
        )
    ],
    dependencies: [
        .package(
            name: "MoneyHashShared",
            url: "https://github.com/MoneyHash/moneyhash-spm",
            from: "3.0.3"
        )
    ],
    targets: [
        .target(
            name: "MoneyHashiOS",
            dependencies: [
                .target(name: "MoneyHash"),
                .product(name: "MoneyHashShared", package: "MoneyHashShared")
            ]
        ),
        .binaryTarget(
            name: "MoneyHash",
            path: "Sources/Frameworks/MoneyHash.xcframework"
        )
    ]
)
