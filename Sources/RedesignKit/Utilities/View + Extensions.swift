//
//  View + Extensions.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

extension View {
    
    /// Conditionally renders the view based on a Boolean condition.
    ///
    /// - Parameter condition: A Boolean that determines whether the view should be included.
    ///
    /// If `true`, the view is rendered. If `false`, the view is removed from the hierarchy.
    ///
    @ViewBuilder func active(if condition: Bool) -> some View {
        if condition {
            self
        }
    }
    
}
