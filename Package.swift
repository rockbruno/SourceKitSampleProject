// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyProject",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "MyProject", targets: ["MyProject"])
    ],
    targets: [
        // Csourcekitd: C modules wrapper for sourcekitd.
        .target(
            name: "Csourcekitd",
            dependencies: []
        ),
        // The actual library code
        .target(
            name: "MyProject",
            dependencies: ["Csourcekitd"]
        )
    ]
)
