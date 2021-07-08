<img src="https://github.com/SwiftVISA/CoreSwiftVISA/blob/master/SwiftVISA%20Logo.png" width="512" height="512">

# NISwiftVISAServiceMessages

This package defines message types that is used by NISwiftVISA and NISwiftVISAService. Because NI-VISA is closed source, it cannot be included in Swift Package Manager. Instead, to use NI-VISA, we communicate with a custom service that runs on macOS. This service is not built using the Swift Package Manager, and thus can include the closed source NI-VISA binary. Messages defined in this package are sent between the NISwiftVISA framework and the NISwiftVISAService application. Usually, you will not need to use this package, but will instead want to use NISwiftVISA.

## Requirements

- Swift 5.0+

## Installation

Installation can be done through the [Swift Package Manager](https://swift.org/package-manager/). To use the CoreSwiftVISA package in your project, include the following dependency in your `Package.swift` file.
```swift
dependencies: [
    .package(url: "https://github.com/SwiftVISA/NISwiftVISAServiceMessages.git", .upToNextMinor(from: "0.1.0"))
]
```

## Supported Messages

NISwiftVISAMessages defines five messages. Each corresponds to one of the following C NI-VISA calls:

- viClose
- viOpen
- viOpenDefaultRM
- viRead
- viWrite

In the future we hope to support additional messages and calls.
