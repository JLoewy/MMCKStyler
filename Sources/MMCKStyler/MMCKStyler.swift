//
//  File.swift
//
//
//  Created by Jason Loewy on 5/30/20.
//

import Foundation

#if os(iOS)
import UIKit
#endif
import SwiftUI

// MARK: - MMCKStyleSource

public protocol MMCKStyleSource: NSObject {
    
    
    // MARK: - Fonts
    
#if os(iOS)
    /// Gets the applications font that is used for the type
    ///
    /// - Parameters:
    ///   - type:      **FontType**
    ///   - pointSize: **CGFloat**
    func font(withType type: MMCKFontType, ofSize pointSize: CGFloat) -> UIFont
#endif
    
    /// Gets the applications font that is used for the type
    ///
    /// - Parameters:
    ///   - type:      **FontType**
    ///   - pointSize: **CGFloat**
    func font(_ type: MMCKFontType, size: CGFloat) -> Font
    
    // MARK: - Colors
    
#if os(iOS)
    /// Get the applications interpretation  of a color
    /// - Parameter color: **MMCKColor**
    /// - Returns: **UIColor** Apps UIColor equivalent
    func color(_ color: MMCKColor) -> UIColor
#endif
    
    
    /// Get the application interpretation of a Color
    /// - Parameter type: **MMCKColor**
    /// - Returns: **Color**
    func color(ofType type: MMCKColor) -> Color
    
    var primaryTextColor: Color { get }
    var secondaryTextColor: Color { get }
    
    var primaryBackgroundColor: Color { get }
    var secondaryBackgroundColor: Color { get }
}

// MARK: - Helper Extension

public extension MMCKStyleSource {
    
    var primaryTextColor: Color {
        self.color(ofType: .textPrimary)
    }
    var secondaryTextColor: Color {
        self.color(ofType: .textSecondary)
    }
    
    var primaryBackgroundColor: Color {
        self.color(ofType: .backgroundPrimary)
    }
    var secondaryBackgroundColor: Color {
        self.color(ofType: .backgroundSecondary)
    }
    
}
