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

## Contributions and Comments
This project is a slow-moving "labor-of-love" for our group and intended additional features are worked on sporatically based upon need, time, and our ability to deal with Apple's poor documentation.  Currently, the bulk of our efforts are put into SwiftVISASwift (https://github.com/SwiftVISA/SwiftVISASwift).  We would love help and please e-mail me (or to reply to the relevant issue or open a new one).

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owner of this repository before making a change.

### All Code Changes Happen Through Pull Requests

1. Fork the repo and create your branch from `master`.
2. Make sure the syle of your code is consistent with that of the current one (indentation, etc.).
3. If you've changed any relevant functionalities, update the documentation.
4. Ensure the application is working correctly.
5. Issue that pull request.

### Code of Conduct

Use common sense (source: https://github.com/gasparl/possa/blob/master/CONTRIBUTING.md)

Examples:

* Be respectful of differing viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Have empathy towards other community members

Examples of unacceptable behavior by participants include:

* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting
  
 
### Reporting Issues or Problems
* Please submit an Issue if you have any problems with any SwiftVISA frameworks/packages
* Please submit an Issue if you need any help installing or working with any of the SwiftVISA Frameworks/Packages
