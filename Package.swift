// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Hugelifts",
    products: [],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.50.4"),
    ],
    targets: [
        .target(
            name: "Hugelifts",
            dependencies: [],
            path: "Hugelifts"),
        .target(
            name: "HugeliftsTests",
            dependencies: ["Hugelifts"],
            path: "HugeliftsTests"),
        .target(
            name: "HugeliftsUITests",
            dependencies: ["Hugelifts"],
            path: "HugeliftsUITests"),
    ]
)
