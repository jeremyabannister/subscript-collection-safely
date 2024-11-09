// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "subscript-collection-safely",
    products: [
        .library(
            name: "subscript-collection-safely",
            targets: ["subscript-collection-safely"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "subscript-collection-safely",
            dependencies: []),
        .testTarget(
            name: "subscript-collection-safely-tests",
            dependencies: ["subscript-collection-safely"]
        ),
    ]
)
