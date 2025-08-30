# restart-prompt-view
Basic app restart prompt for iOS Swift apps -- best used after a user has purchased an upgrade

## Usage

In your main view (e.g. HomeView.swift) create a variable like so:

```swift
@State private var showRestartPrompt = false
```

Then, you can call it like so (e.g. after a ZStack, ScrollView, etc):

```swift
.sheet(isPresented: $showRestartPrompt) {
                RestartPromptView()
            }
.onChange(of: showPaywall) { _, isPresented in
    if !isPresented {  // When paywall is dismissed
        Purchases.shared.getCustomerInfo { customerInfo, error in
            if let info = customerInfo, !info.entitlements.active.isEmpty {
                showRestartPrompt = true
            }
        }
    }
}
// There are some subtle references to RevenueCat
```
