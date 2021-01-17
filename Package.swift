// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "NISwiftVISAServiceMessages",
	products: [
		.library(
			name: "NISwiftVISAServiceMessages",
			targets: ["NISwiftVISAServiceMessages"]),
	],
	dependencies: [
		.package(
			url: "https://github.com/SwiftVISA/CVISATypes.git", .upToNextMajor(from: "1.0.3"))
	],
	targets: [
		.target(
			name: "NISwiftVISAServiceMessages",
			dependencies: ["CVISATypes"]),
	]
)
