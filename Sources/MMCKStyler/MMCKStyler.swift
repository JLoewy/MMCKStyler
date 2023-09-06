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
    
    case appMain
    
    case buttonBlue
    case buttonRed
    case buttonGreen
    case buttonSubmit
    
    case lightBlue
    case activeBlue
    
    case backgroundPrimary
    case backgroundSecondary
    case backgroundBlueLight
    
    case textPrimary
    case textSecondary
    case textDarkBlue
    
    case separatorLight
    case separatorExtraLight
    
    case separatorSemiDark
    case separatorDark
    case separatorExtraDark
    
    case missingInput
}

public enum MMImage {
    
    case plusAdd
    case closeX
    
    case mmPlay
}

// MARK: - MMCKStyleSource

public protocol MMCKStyleSource: NSObject {
    
    // MARK: - Fonts
    
    /// Gets the applications font that is used for the type
    ///
    /// - Parameters:
    ///   - type:      **FontType**
    ///   - pointSize: **CGFloat**
    func font(withType type: MMCKFontType, ofSize pointSize: CGFloat) -> UIFont
    
    // MARK: - Colors
    
    /// Get the applications interpretation  of a color
    /// - Parameter color: **MMCKColor**
    /// - Returns: **UIColor** Apps UIColor equivalent
    func color(_ color: MMCKColor) -> UIColor
    
    var primaryTextColor: Color { get }
    var secondaryTextColor: Color { get }
    
    var primaryBackgroundColor: Color { get }
    var secondaryBackgroundColor: Color { get }
}

public extension MMCKStyleSource {
    
    var primaryTextColor: Color {
        self.color(.textPrimary).color
    }
    var secondaryTextColor: Color {
        self.color(.textSecondary).color
    }
    
    var primaryBackgroundColor: Color {
        self.color(.backgroundPrimary).color
    }
    var secondaryBackgroundColor: Color {
        self.color(.backgroundSecondary).color
    }
    
}

#if canImport(SwiftUI)
import SwiftUI

public extension UIFont {
    var font: Font { Font(self) }
}

public extension UIColor {
    var color: Color { Color(self) }
}
#endif

#endif
