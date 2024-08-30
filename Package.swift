// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Varioqub",
    platforms: [
        .iOS(.v13) // Ensures compatibility with iOS 13 and later
    ],
    products: [
        .library(
            name: "Varioqub",
            targets: ["Varioqub"]),
    ],
    targets: [
        .binaryTarget(
            name: "VarioqubMain",
            path: "Varioqub.xcframework" // Adjust the path to where the .xcframework is located
        ),
        .target(
            name: "Varioqub",
            path: ""
        ),
    ]
)
