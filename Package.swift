// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rc2Parser",
	platforms: [
		.macOS(.v10_15)
	],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Rc2Parser",
            targets: ["Rc2Parser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mlilback/SwiftAntlr4Runtime.git", from: "0.1.0"),
		.package(url: "https://github.com/apple/swift-log.git", from: "1.1.1"),
    //	.package(path: "../newparser/Antlr"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Rc2Parser",
            dependencies: ["Antlr4", "Logging"]),
        .testTarget(
            name: "Rc2ParserTests",
            dependencies: ["Rc2Parser"]),
    ]
)
