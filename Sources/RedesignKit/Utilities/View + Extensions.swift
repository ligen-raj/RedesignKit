//
//  View + Extensions.swift
//  RedesignKit
//
//  Created by Ligen Raj on 03/07/25.
//

import SwiftUI

extension View {
    
    @ViewBuilder func active(if condition: Bool) -> some View {
        if condition {
            self
        }
    }
    
}
