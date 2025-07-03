//
//  NeumorphicModifier.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

/// Represents the visual style of the neumorphic effect.
///
/// - `in`: Creates an inset (inner) shadow effect, giving the appearance of a pressed element.
/// - `out`: Creates an outset (outer) shadow effect, making the element appear raised.
/// - `reverse`: Reverses the typical shadow direction, used for creative depth reversal.
public enum NeumorphicStyle {
    case `in`, out, reverse
}

/// A view modifier that applies a neumorphic design style to any shaped view.
///
/// Neumorphism combines light and shadow to create a soft, tactile interface, mimicking extruded surfaces.
fileprivate struct NeumorphicModifier<S: Shape>: ViewModifier {
    
    let shape: S
    let color: Color
    let style: NeumorphicStyle
    
    func body(content: Content) -> some View {
        content
            .background(alignment: .center, content: BackgroundContent)
    }
    
    @ViewBuilder func BackgroundContent() -> some View {
        switch style {
        case .in:
            shape
                .fill(color)
                .innerShadow(using: shape, color: .black.opacity(0.2), radius: 4, x: 4, y: 4)
                .innerShadow(using: shape, color: .white.opacity(0.2), radius: 4, x: -4, y: -4)
        case .out:
            shape
                .fill(color)
                .shadow(color: .black.opacity(0.2), radius: 4, x: 4, y: 4)
                .shadow(color: .white.opacity(0.2), radius: 4, x: -4, y: -4)
        case .reverse:
            shape
                .fill(color)
                .shadow(color: .white.opacity(0.2), radius: 4, x: 4, y: 4)
                .shadow(color: .black.opacity(0.2), radius: 4, x: -4, y: -4)
        }
    }
    
}

extension View {
    
    /// Applies a neumorphic (soft shadow-based) visual effect to the current view using a specified shape and style.
    ///
    /// - Parameters:
    ///   - shape: A `Shape` that defines the geometry of the effect.
    ///   - color: The base background color to be styled.
    ///   - style: The `NeumorphicStyle` to apply (`in`, `out`, or `reverse`).
    /// - Returns: A view modified with a neumorphic appearance.
    public func neumorphism<S: Shape>(using shape: S, color: Color, style: NeumorphicStyle) -> some View {
        modifier(NeumorphicModifier(shape: shape, color: color, style: style))
    }
    
}
