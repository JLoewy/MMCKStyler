//
//  File.swift
//
//
//  Created by Jason Loewy on 5/30/20.
//

import Foundation

#if os(iOS)
import UIKit

// MARK: - MCKFontType

public enum MMCKFontType {
    case light
    case lightItalic
    case regular
    case regularItalic
    case semiBold
    case bold
}

public enum MMCKColor {
    
    case buttonBlue
    case buttonRed
    case buttonSubmit
    
    case backgroundPrimary
    case backgroundSecondary
    
    case textPrimary
    case textSecondary
    
    case seperatorLight
    case seperatorExtraLight
    
    case seperatorDark
    case seperatorExtraDark
    
}

// MARK: - MMCKStyleSource

public protocol MMCKStyleSource: NSObject {
    
    // MARK: - Fonts
    
    /// Gets the applications font that is used for the type
    ///
    /// - Parameters:
    ///   - type:      /FontType/
    ///   - pointSize: /CGFloat/
    func font(withType type: MMCKFontType, ofSize pointSize: CGFloat) -> UIFont
    
    // MARK: - Colors
    
    /// Get the applications intepretation of a color
    func color(_ color: MMCKColor) -> UIColor
    
}
#endif
