// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "Varioqub",
    platforms: [
        .iOS(.v12) // Ensures compatibility with iOS 11 and later
    ],
    products: [
        .library(
            name: "Varioqub",
            targets: ["Varioqub"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yandexmobile/metrica-sdk-ios", from: "4.5.2"), // YandexMobileMetrica
        // Add any other dependencies required here
    ],
    targets: [
        .binaryTarget(
            name: "MetricaAdapter",
            path: "MetricaAdapter.xcframework" // Adjust the path to where the .xcframework is located
        ),
        .binaryTarget(
            name: "MetricaAdapterReflection",
            path: "MetricaAdapterReflection.xcframework" // Adjust the path to where the .xcframework is located
        ),
        .binaryTarget(
            name: "VQSwiftProtobuf",
            path: "VQSwiftProtobuf.xcframework" // Adjust the path to where the .xcframework is located
        ),
        .binaryTarget(
            name: "VarioqubMain",
            path: "Varioqub.xcframework" // Adjust the path to where the .xcframework is located
        ),
        .target(
            name: "Varioqub",
            dependencies: [
                .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios"), // Explicit declaration of the product and package
                "MetricaAdapter" // Ensure this exists or is linked correctly
            ],
            path: ""
        ),
    ]
)
