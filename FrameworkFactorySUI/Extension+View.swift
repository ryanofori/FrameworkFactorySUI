//
//  Extension+View.swift
//  FrameworkFactorySUI
//
//  Created by Ryan Ofori on 3/18/23.
//

import Foundation
import SwiftUI
extension View {
    /// This allows you to apply a modfier if a condition is true
    /// 
    /// Source: https://designcode.io/swiftui-handbook-conditional-modifier
    /// 
    /// - Parameters:
    ///   - condition: Takes in a boolean that will determine if the modifer will be represented or not.
    ///   - transform: Closure used to pass the view that will the provided modifier when condition is true
    /// - Returns: Only the view or the view with the applied modifier
    /// ```swift
    /// Text("Hi")
    ///     .if(isFixed) { view in
    ///         view.fixedSize(horizontal: true, vertical: false)
    ///     }
    /// ```
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
