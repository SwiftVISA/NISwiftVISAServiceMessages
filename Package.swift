// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "NISwiftVISAServiceMessages",
  platforms: [.macOS("12.0")],
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
