# SkeletonKit

A lightweight and reusable SwiftUI skeleton loading library with multiple animation styles.

## Features

- Shimmer animation
- Pulse animation
- Wave animation
- Solid skeleton
- Custom colors
- Custom corner radius
- Custom animation duration
- Animation delay
- Works with any SwiftUI View
- iOS 16+
- Zero third-party dependencies

## Installation

### Swift Package Manager

In Xcode:

`File → Add Package Dependencies`

Enter:

```text
https://github.com/jestinsajikakkanattu-cmd/SkeletonKit
```

Then:

```swift
import SkeletonKit
```

## Basic Usage

```swift
Text("Hello World")
    .skeleton(isLoading: isLoading)
```

## Image

```swift
Image("profile")
    .resizable()
    .frame(width: 100, height: 100)
    .skeleton(isLoading: isLoading)
```

## Shimmer

```swift
.skeleton(
    isLoading: isLoading,
    configuration: SkeletonConfiguration(
        style: .shimmer
    )
)
```

## Pulse

```swift
.skeleton(
    isLoading: isLoading,
    configuration: SkeletonConfiguration(
        style: .pulse
    )
)
```

## Wave

```swift
.skeleton(
    isLoading: isLoading,
    configuration: SkeletonConfiguration(
        style: .wave
    )
)
```

## Solid

```swift
.skeleton(
    isLoading: isLoading,
    configuration: SkeletonConfiguration(
        style: .solid
    )
)
```

## Custom Configuration

```swift
.skeleton(
    isLoading: isLoading,
    configuration: SkeletonConfiguration(
        style: .shimmer,
        cornerRadius: 16,
        duration: 1.2,
        delay: 0.1,
        baseColor: .gray.opacity(0.2),
        highlightColor: .white.opacity(0.7)
    )
)
```

## Example

```swift
import SwiftUI
import SkeletonKit

struct ContentView: View {

    @State private var isLoading = true

    var body: some View {
        VStack(spacing: 20) {

            Circle()
                .frame(width: 80, height: 80)
                .skeleton(isLoading: isLoading)

            Text("Jestin Saji")
                .font(.title)
                .frame(maxWidth: .infinity)
                .frame(height: 30)
                .skeleton(isLoading: isLoading)

            Text("iOS Developer")
                .frame(maxWidth: .infinity)
                .frame(height: 20)
                .skeleton(isLoading: isLoading)

            Button("Toggle Loading") {
                isLoading.toggle()
            }
        }
        .padding()
    }
}
```

## Requirements

- iOS 16.0+
- Swift 5.9+
- SwiftUI

## Author

Jestin Saji

## License

SkeletonKit is available under the MIT License.
