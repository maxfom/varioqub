// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "VarioqubPackage",
    platforms: [
        .iOS(.v11) // Укажите минимальную версию iOS, которая поддерживается вашим фреймворком
    ],
    products: [
        // Продукты, которые будут доступны для использования в других проектах
        .library(
            name: "VarioqubPackage",
            targets: ["VarioqubPackage"]),
    ],
    targets: [
        // Указываем пути к бинарным фреймворкам, которые теперь находятся в каталоге Sources
        .binaryTarget(
            name: "Varioqub",
            path: "Sources/Varioqub.xcframework"
        ),
        .binaryTarget(
            name: "MetricaAdapterReflection",
            path: "Sources/MetricaAdapterReflection.xcframework"
        ),
        .binaryTarget(
            name: "VQSwiftProtobuf",
            path: "Sources/VQSwiftProtobuf.xcframework"
        ),
        // Основной таргет, который будет ссылаться на вышеуказанные бинарные таргеты
        .target(
            name: "VarioqubPackage",
            dependencies: [
                "Varioqub",
                "MetricaAdapterReflection",
                "VQSwiftProtobuf"
            ],
            path: "Sources",
            publicHeadersPath: nil

        ),
        // Тесты для пакета
        .testTarget(
            name: "VarioqubPackageTests",
            dependencies: ["VarioqubPackage"],
            path: "Tests/VarioqubPackageTests"
        ),
    ]
)
