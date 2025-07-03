//
//  ClaymorphicModifier.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

/// A view modifier that applies a claymorphic (soft UI) effect to any shape-based view.
///
/// This modifier adds:
/// - A background with the specified color and shape.
/// - Two inner shadows to create a soft, pressed effect.
/// - An outer shadow to simulate elevation.
fileprivate struct ClaymorphicModifier<S: Shape>: ViewModifier {
    
    let shape: S
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .background(color, in: shape)
            .innerShadow(using: shape, color: .white.opacity(0.3), radius: 4, x: 4, y: 4)
            .innerShadow(using: shape, color: .black.opacity(0.2), radius: 4, x: -4, y: -4)
            .shadow(color: color.opacity(0.5), radius: 8, x: 8, y: 12)
    }
}

extension View {
    
    /// Applies a claymorphic (soft UI) effect to the current view using a specified shape and color.
    ///
    /// - Parameters:
    ///   - shape: A `Shape` to define the contour of the claymorphic background and shadows.
    ///   - color: A `Color` used as the base background and for shadow rendering.
    /// - Returns: A view modified with claymorphic styling.
    public func claymorphism<S: Shape>(using shape: S, color: Color) -> some View {
        modifier(ClaymorphicModifier(shape: shape, color: color))
    }
    
}
