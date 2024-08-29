// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "varioqub",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "varioqub",
            targets: ["MetricaAdapter", "MetricaAdapterReflection", "Varioqub", "VQSwiftProtobuf"]),
    ],
    targets: [
        .target(
            name: "varioqub",
            path: "Sources",
            cSettings:
                [.headerSearchPath("Headers")]),
        .binaryTarget(name: "MetricaAdapter",
                      path: "Sources/MetricaAdapter.xcframework"),
        .binaryTarget(name: "MetricaAdapterReflection",
                      path: "Sources/MetricaAdapterReflection.xcframework"),
        .binaryTarget(name: "Varioqub",
                      path: "Sources/Varioqub.xcframework"),
        .binaryTarget(name: "VQSwiftProtobuf",
                      path: "Sources/VQSwiftProtobuf.xcframework"),
    ]
)
