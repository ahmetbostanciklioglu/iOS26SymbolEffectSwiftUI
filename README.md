<div align="center">

# ✨ iOS 26 SymbolEffect in SwiftUI

**A minimal SwiftUI demo of the iOS 26 SF Symbol `.drawOff` effect**

[![Platform](https://img.shields.io/badge/Platform-iOS%2026-blue?style=flat-square)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-000000?style=flat-square&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![Xcode](https://img.shields.io/badge/Xcode-26.1-147EFB?style=flat-square&logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/iOS26SymbolEffectSwiftUI?style=flat-square&color=6E48AA)](https://github.com/ahmetbostanciklioglu/iOS26SymbolEffectSwiftUI/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/iOS26SymbolEffectSwiftUI?style=flat-square&color=4776E6)](https://github.com/ahmetbostanciklioglu/iOS26SymbolEffectSwiftUI/commits)

</div>

## 📖 Overview

`iOS26SymbolEffectSwiftUI` is a small, focused sample project that demonstrates the SF Symbol animation API in SwiftUI on iOS 26. It renders a system symbol (`signature`) and applies the `.drawOff` symbol effect, driven by a bound `isActive` state that toggles automatically two seconds after the view appears. The core animation is wrapped in a reusable `SymbolEffects` view so you can drop the pattern into your own app.

## ✨ Features

- Uses the iOS 26 `.symbolEffect(.drawOff, isActive:)` modifier on an SF Symbol.
- Reusable `SymbolEffects` view that takes an `isActive` binding to trigger the effect.
- State-driven activation via a `.task` that toggles `isActive` after a short delay.
- Resizable, aspect-fill symbol rendering at a fixed 160×160 frame.
- Dark-mode preview configured with `.preferredColorScheme(.dark)`.

## 📸 Preview

<div align="center">

<img width="1222" height="740" alt="Screenshot 2025-12-11 at 13 27 26" src="https://github.com/user-attachments/assets/4f60c3c2-bd8a-445f-82ce-766d2163b4a4" />
<img width="1219" height="744" alt="Screenshot 2025-12-11 at 13 28 52" src="https://github.com/user-attachments/assets/3f11cc0e-044f-462b-88a7-d348b961baae" />

</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/iOS26SymbolEffectSwiftUI.git
cd iOS26SymbolEffectSwiftUI
open iOS26SymbolEffectSwiftUI.xcodeproj
```

Then select an iOS 26 simulator (or device) and press `Command + R` to build and run.

## 🛠️ Usage

Reuse the `SymbolEffects` view by driving it with your own state:

```swift
struct DemoView: View {
    @State private var isActive = false

    var body: some View {
        SymbolEffects(isActive: $isActive)
            .onTapGesture { isActive.toggle() }
    }
}
```

## 📋 Requirements

- iOS 26.1 or later
- Xcode 26.1 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
