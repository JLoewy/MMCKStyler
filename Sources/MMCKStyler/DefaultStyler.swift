//
//  File.swift
//  
//
//  Created by Jason Loewy on 9/17/22.
//

import Foundation
#if os(iOS)
import UIKit
#endif

import SwiftUI

/// Useful as a default styler as a failsafe incase one doesn't get set.
/// Fonts use system fonts and colors are 'acceptable'
public class MMCKDefaultStyler: NSObject, MMCKStyleSource {
    
#if os(iOS) || os(visionOS)
    public func font(withType type: MMCKStyler.MMCKFontType, ofSize pointSize: CGFloat) -> UIFont {
            
        switch type {
            case .light:
                return UIFont.systemFont(ofSize: pointSize, weight: .light)
            case .lightItalic, .regularItalic:
                return UIFont.italicSystemFont(ofSize: pointSize)
                
            case .regular:
                return UIFont.systemFont(ofSize: pointSize, weight: .regular)
                
            case .semiBold:
                return UIFont.systemFont(ofSize: pointSize, weight: .semibold)
                
            case .bold:
                return UIFont.systemFont(ofSize: pointSize, weight: .bold)
        }
    }
    
    public func color(_ color: MMCKStyler.MMCKColor) -> UIColor {
        
        switch color {
            case .buttonBlue:
                return UIColor.systemBlue
                
            case .buttonRed:
                return UIColor.systemRed
                
            case .buttonGreen:
                return UIColor.green
                
            case .buttonSubmit:
                return UIColor.cyan
                
            case .backgroundPrimary:
                return UIColor.white
                
            case .backgroundSecondary:
                return UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
                
            case .textPrimary:
                return UIColor(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0, alpha: 1.0)
                
            case .textSecondary:
                return UIColor(red: 163.0/255.0, green: 163.0/255.0, blue: 163.0/255.0, alpha: 1.0)
                
            case .separatorLight:
                return UIColor(red: 241.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, alpha: 1.0)
                
            case .separatorExtraLight:
                return UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
                
            case .separatorSemiDark:
                return UIColor(red: 150.0/255.0, green: 150.0/255.0, blue: 150.0/255.0, alpha: 1.0)
                
            case .separatorDark:
                return UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0)
                
            case .separatorExtraDark:
                return UIColor(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0, alpha: 1.0)
            
            case .lightBlue, .activeBlue:
                return UIColor.blue

            case .missingInput:
                return UIColor.red.withAlphaComponent(0.8)
            case .backgroundBlueLight:
                return UIColor.blue
            case .textDarkBlue:
                return UIColor.blue
            case .appMain:
                return UIColor.systemBlue
        }
    }
    
#endif
    
    public func font(_ type: MMCKFontType, size: CGFloat) -> Font {
        switch type {
            case .light:
                return Font.system(size: size, weight: .light)
                
            case .lightItalic:
                return Font.system(size: size, weight: .light).italic()
                
            case .regularItalic:
                return Font.system(size: size, weight: .regular).italic()
                
            case .regular:
                return Font.system(size: size, weight: .regular)
                
            case .semiBold:
                return Font.system(size: size, weight: .semibold)
                
            case .bold:
                return Font.system(size: size, weight: .bold)
        }
    }
    
    public func color(ofType type: MMCKColor) -> Color {
        
        switch type {
            case .buttonBlue:
                return Color.blue
                
            case .buttonRed:
                return Color.red
                
            case .buttonGreen:
                return Color.green
                
            case .buttonSubmit:
                return Color.blue
                
            case .backgroundPrimary:
                return Color.white
                
            case .backgroundSecondary:
                return Color(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0)
                
            case .textPrimary:
                return Color(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0)
                
            case .textSecondary:
                return Color(red: 163.0/255.0, green: 163.0/255.0, blue: 163.0/255.0)
                
            case .separatorLight:
                return Color(red: 241.0/255.0, green: 241.0/255.0, blue: 241.0/255.0)
                
            case .separatorExtraLight:
                return Color(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0)
                
            case .separatorSemiDark:
                return Color(red: 150.0/255.0, green: 150.0/255.0, blue: 150.0/255.0)
                
            case .separatorDark:
                return Color(red: 100.0/255.0, green: 100.0/255.0, blue: 100.0/255.0)
                
            case .separatorExtraDark:
                return Color(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0)
            
            case .lightBlue, .activeBlue:
                return Color.blue

            case .missingInput:
                return Color.pink
                
            case .backgroundBlueLight:
                return Color.blue
            case .textDarkBlue:
                return Color.blue
            case .appMain:
                return Color.blue
        }
    }
}

