// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpusKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "OpusKit",
            targets: ["OpusKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SerhiiShovkoplias/OpusBinding.git", from: "1.0.11")
    ],
    targets: [
        .target(
            name: "OpusKit",
            dependencies: ["OpusBinding"],
            path: "Sources/OpusKit",
            publicHeadersPath: "include",
            linkerSettings: [
              .linkedFramework("AudioToolbox"),
              .linkedFramework("AVFoundation")
            ]
        )
    ]
)
