// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Calc",
    products: [
        .library(name: "Calc", targets: ["Calc"]),
        .executable(name: "CalcCheck", targets: ["CalcCheck"]),
        .executable(name: "MathEndpoint", targets: ["MathEndpoint"]),
        .executable(name: "SubtractEndpoint", targets: ["SubtractEndpoint"]),
    ],
    targets: [
        .target(name: "Calc"),
        // Portable smoke-check runnable via `swift run CalcCheck` (no XCTest needed).
        .executableTarget(name: "CalcCheck", dependencies: ["Calc"]),
        // XCTest suite — runs on the VisionHammer Linux agent (`swift test`).
        .testTarget(name: "CalcTests", dependencies: ["Calc"]),
        // SCRUM-113: Math endpoint to calculate 2 * 4
        .executableTarget(name: "MathEndpoint", dependencies: ["Calc"]),
        // SCRUM-115: Subtract endpoint to calculate 10 - 2
        .executableTarget(name: "SubtractEndpoint", dependencies: ["Calc"]),
    ]
)
