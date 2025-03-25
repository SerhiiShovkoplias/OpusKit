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
        .package(url: "https://github.com/SerhiiShovkoplias/libopus.git", from: "1.0.3"),
        .package(url: "https://github.com/SerhiiShovkoplias/OpusBinding.git", from: "1.0.5")
    ],
    targets: [
        .target(
            name: "OpusKit",
            dependencies: [
                .product(name: "libopus", package: "libopus"),
                .product(name: "OpusBinding", package: "OpusBinding")
            ],
            path: "Sources/OpusKit",
            publicHeadersPath: "include",
            linkerSettings: [
              .linkedLibrary("opus"),
              .linkedFramework("AudioToolbox"),
              .linkedFramework("AVFoundation")
            ]
        )
    ]
)
