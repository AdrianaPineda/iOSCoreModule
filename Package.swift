// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "iOSCoreModule",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "iOSCoreModule", 
            targets: ["iOSCoreModule"])
    ],
    targets: [
        .binaryTarget(
            name: "iOSCoreModule", 
            path: "iOSCoreModule.xcframework")
    ])