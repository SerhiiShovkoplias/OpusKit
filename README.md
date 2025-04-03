# OpusKit

A Swift Package Manager (SPM) library that builds on top of \`libopus\` with \`OpusBinding\` and provides an easy-to-use, app-facing API for Opus audio encoding and decoding.

## Features

- Encode audio and save as \`.ogg\`
- Decode \`.ogg\` audio into \`.m4a\`
- Simple API for integration into iOS/macOS apps

## Usage

```swift
// Encoding audio to Opus (.ogg)
let encoder = OpusKitEncoder(url: sourceAudioURL)
encoder?.start(completion: { path, duration in
    guard let path = path else { return }

    do {
        let data = try NSData(contentsOfFile: path) as Data
        // Use encoded data
    } catch {
        // Handle error
    }
})

// Decoding Opus (.ogg) to M4A
let m4aDestinationURL = FileManager.default.temporaryDirectory
    .appendingPathComponent(UUID().uuidString + ".m4a")

let decoder = OpusKitDecoder(url: oggURL, outputUrl: m4aDestinationURL)
decoder?.start(completion: {
    do {
        let data = try NSData(contentsOfFile: m4aDestinationURL) as Data
        // Use decoded data
    } catch {
        // Handle error
    }
})
```

## Requirements

- iOS 13.0+ / macOS 10.15+
- Swift 5.5+
- Xcode 13+

## Installation

Add the package to your `Package.swift` or use Xcode's Swift Package Manager UI:

```swift
.package(url: "https://github.com/SerhiiShovkoplias/OpusKit.git", from: "1.0.17")
```
