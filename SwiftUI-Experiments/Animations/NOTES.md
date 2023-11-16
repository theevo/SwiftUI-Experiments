#  Animation Notes

## easeIn vs easeOut vs easeInOut

Other animations with different behavior as follows,

* linear: The animation is performed at a constant speed for the specified duration.
* easeOut: The animation starts out fast and slows as the end of the sequence approaches.
* easeIn: The animation sequence starts out slow and speeds up as the end approaches.
* easeInOut: The animation starts slow, speeds up, and then slows down again.

## Hack: use ZStack to hold space

```swift
struct StackingPlaceholder: View {
    var body: some View {
        Text("Stacking with a Placeholder")
        HStack {
            TrainCar(.rear)
            ZStack {
                TrainCar(.middle) // in the back, not visisble
                    .font(.largeTitle)
                    .opacity(0) // only makes text invisible
                    .background(Color("customBlue")) // this blue background IS visible
                TrainCar(.middle) // in the front, is visible
            }
            TrainCar(.front)            
        }
        TrainTrack()
    }
}
```



## Links

[Animating views and transitions — SwiftUI Tutorials | Apple Developer Documentation](https://developer.apple.com/tutorials/swiftui/animating-views-and-transitions)

[SwiftUI Tutorials | Apple Developer Documentation](https://developer.apple.com/tutorials/swiftui)

[animation(_:value:) | Apple Developer Documentation](https://developer.apple.com/documentation/swiftui/view/animation(_:value:))

[How to animate the size of text - a free SwiftUI by Example tutorial](https://www.hackingwithswift.com/quick-start/swiftui/how-to-animate-the-size-of-text)

[Customizing Button with ButtonStyle - a free SwiftUI by Example tutorial](https://www.hackingwithswift.com/quick-start/swiftui/customizing-button-with-buttonstyle)

[Basics of SwiftUI Animations | by Ami Solani | Simform Engineering | Medium]
(https://medium.com/simform-engineering/basics-of-swift-ui-animations-d1aa2485a5d9#:~:text=easeOut%3A%20The%20animation%20starts%20out,and%20then%20slows%20down%20again.)

[Adjusting the space between views — SwiftUI Concepts Tutorials | Apple Developer Documentation](https://developer.apple.com/tutorials/swiftui-concepts/adjusting-the-space-between-views)

[How to start an animation immediately after a view appears - a free SwiftUI by Example tutorial](https://www.hackingwithswift.com/quick-start/swiftui/how-to-start-an-animation-immediately-after-a-view-appears)

[How to delay an animation - a free SwiftUI by Example tutorial](https://www.hackingwithswift.com/quick-start/swiftui/how-to-delay-an-animation#:~:text=When%20you%20create%20any%20animation,use%20the%20delay()%20modifier.)

