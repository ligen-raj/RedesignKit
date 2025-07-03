//
//  Button + Extension.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

struct NeumorphicButtonStyle<S: Shape>: ButtonStyle {
    
    let shape: S
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .neumorphism(using: shape, color: color, style: configuration.isPressed ? .reverse : .out)
    }
}
