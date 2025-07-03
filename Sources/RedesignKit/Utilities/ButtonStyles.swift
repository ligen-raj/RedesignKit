//
//  Button + Extension.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

/// A custom button style that applies a neumorphic effect using the specified shape and color.
///
/// This button style creates a soft, tactile effect:
/// - When the button is **not pressed**, it uses `.out` style (raised).
/// - When the button **is pressed**, it uses `.reverse` style (pressed in).
///
/// This makes it ideal for neumorphic UI designs where the button visually responds to interaction.
///
/// ### Example
/// ```swift
/// Button(action: {
///     print("Tapped")
/// }) {
///     Image(systemName: "heart.fill")
///         .foregroundStyle(.pink)
///         .frame(width: 60, height: 60)
/// }
/// .buttonStyle(NeumorphicButtonStyle(shape: .circle, color: .gray))
/// ```
public struct NeumorphicButtonStyle<S: Shape>: ButtonStyle {
    
    let shape: S
    let color: Color
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .neumorphism(using: shape, color: color, style: configuration.isPressed ? .reverse : .out)
    }
}
