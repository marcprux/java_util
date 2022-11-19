// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "java_util",
    products: [
        .library(
            name: "java_util",
            targets: ["java_util"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PureSwift/java_lang.git",
            branch: "master"
        ),
    ],
    targets: [
        .target(
            name: "java_util",
            dependencies: [
                "java_lang",
            ],
            path: "./Sources"
        )
    ]
)
