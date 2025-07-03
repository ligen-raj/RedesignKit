# RedesignKit

![Version](https://img.shields.io/badge/version-1.0.3-blue)
![Platforms](https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20visionOS%20%7C%20tvOS%20%7C%20watchOS-blue)
![iOS](https://img.shields.io/badge/iOS-15%2B-lightgrey)
![License](https://img.shields.io/badge/license-MIT-green)

**RedesignKit** is a lightweight static iOS framework built with SwiftUI, designed to supercharge your UI with modern design styles like Neumorphism, Glassmorphism, Claymorphism, and more. It includes a collection of reusable SwiftUI view modifiers and button extensions, making it effortless to apply stunning design effects with minimal code.

---

## ✨ Features

- 🧊 Neumorphic, Glassmorphic & Claymorphic styles
- 🔘 Custom Button Modifiers
- 🧱 Clean, reusable View Modifiers
- ⚡ Built as a Static Framework for performance

---

## 📦 Requirements

- iOS 15+
- Swift 5.5+
- SwiftUI

---

## 🧾 Version

**Current Version:** `v1.0.3`  
Check the [Releases](https://github.com/ligen-raj/RedesignKit/releases) for version history and updates.

---

## 🚀 Installation

### Swift Package Manager (SPM)

You can install RedesignKit via Swift Package Manager by adding the following URL to your Xcode project:
https://github.com/ligen-raj/RedesignKit.git

1. In **Xcode**, go to `File` → `Add Packages...`
2. Enter the repo URL: `https://github.com/ligen-raj/RedesignKit.git`
3. Choose version `1.0.3` or `Up to Next Major Version`
4. Click **Add Package**

Import the framework where needed:

```swift
import RedesignKit
```
---

## 🧪 Usage Example

```swift
Text("Get Started!!")
    .fontWeight(.medium)
    .foregroundStyle(.white)
    .padding(.horizontal)
    .padding()
    .claymorphism(using: .capsule, color: .blue)

Button(action: {
    // Action
}) {
    Text("Reset All")
        .foregroundStyle(.red)
        .padding()
        .neumorphism(using: .capsule, color: .gray, style: .in)
}
.buttonStyle(NeumorphicButtonStyle(shape: .capsule, color: .gray))

```

---

## 📄 License

RedesignKit is available under the MIT license. See the [LICENSE](https://github.com/ligen-raj/RedesignKit/blob/master/LICENSE) file for more info.
