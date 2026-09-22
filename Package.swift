// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SkeletonKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SkeletonKit",
            targets: ["SkeletonKit"]
        )
    ],
    targets: [
        .target(
            name: "SkeletonKit"
        )
    ]
)
