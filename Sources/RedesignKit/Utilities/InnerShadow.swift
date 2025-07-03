//
//  InnerShadow.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//


import SwiftUI

// A view modifier that adds an inner shadow to a shape, simulating depth within the bounds.
///
/// This modifier uses a combination of stroke, blur, and masking to create an illusion
/// of a shadow cast inside the shape, useful for soft UI effects like neumorphism.
fileprivate struct InnerShadow<S: Shape>: ViewModifier {
    
    let shape: S
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .center, content: OverlayContent)
    }
    
    func OverlayContent() -> some View {
        shape
            .stroke(color, lineWidth: radius * 2)
            .blur(radius: radius)
            .offset(x: x, y: y)
            .mask(shape)
//            .stroke(color, lineWidth: radius)
//            .padding(-radius * 0.5)
//            .shadow(color: color, radius: radius, x: x, y: y)
//            .clipShape(shape)
    }
    
}

extension View {
    
    /// Applies an inner shadow effect to the view using a custom shape.
    ///
    /// - Parameters:
    ///   - shape: The shape that defines the shadow boundary.
    ///   - color: The shadow color. Defaults to `.primary.opacity(0.3)`.
    ///   - radius: The blur radius of the shadow. Defaults to `4`.
    ///   - x: The horizontal offset of the shadow. Defaults to `0`.
    ///   - y: The vertical offset of the shadow. Defaults to `0`.
    /// - Returns: A view with an inner shadow applied.
    func innerShadow<S: Shape>(using shape: S, color: Color = .primary.opacity(0.3), radius: CGFloat = 4, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        self
            .modifier(InnerShadow(shape: shape, color: color, radius: radius, x: x, y: y))
    }
    
}
