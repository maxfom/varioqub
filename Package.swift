// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "varioqub",
    platforms: [
        .iOS(.v11) // Ensures compatibility with iOS 11 and later
    ],
    products: [
        .library(
            name: "varioqub",
            targets: ["varioqub"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yandexmobile/metrica-sdk-ios", from: "4.5.2"), // YandexMobileMetrica
        // Add any other dependencies required here
    ],
    targets: [
        .target(
            name: "varioqub",
            dependencies: [
                .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios"), // Explicit declaration of the product and package
                "MetricaAdapter" // Ensure this exists or is linked correctly
            ],
            path: "varioqub"
        ),
        .binaryTarget(
            name: "MetricaAdapter",
            path: "Sources/MetricaAdapter.xcframework" // Adjust the path to where the .xcframework is located
        ),
    ],
    swiftLanguageVersions: [.v5]
)
