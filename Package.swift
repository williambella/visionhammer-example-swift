// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Calc",
    products: [
        .library(name: "Calc", targets: ["Calc"]),
        .executable(name: "CalcCheck", targets: ["CalcCheck"]),
    ],
    targets: [
        .target(name: "Calc"),
        // Portable smoke-check runnable via `swift run CalcCheck` (no XCTest needed).
        .executableTarget(name: "CalcCheck", dependencies: ["Calc"]),
        // XCTest suite — runs on the VisionHammer Linux agent (`swift test`).
        .testTarget(name: "CalcTests", dependencies: ["Calc"]),
    ]
)
