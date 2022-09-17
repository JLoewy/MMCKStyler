//
//  File.swift
//  
//
//  Created by Jason Loewy on 9/17/22.
//

import Foundation
#if os(iOS)
import UIKit

/// Useful as a default styler as a failsafe incase one doesn't get set.
/// Fonts use system fonts and colors are 'acceptable'
public class MMCKDefaultStyler: NSObject, MMCKStyleSource {
    
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
                
            case .buttonSubmit:
                return UIColor.cyan
                
            case .backgroundPrimary:
                return UIColor.white
                
            case .backgroundSecondary:
                return UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
                
            case .textPrimary:
                return UIColor.black
                
            case .textSecondary:
                return UIColor(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0, alpha: 1.0)
                
            case .separatorLight:
                return UIColor(red: 241.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, alpha: 1.0)
                
            case .separatorExtraLight:
                return UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
                
            case .separatorDark:
                return UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0)
                
            case .separatorExtraDark:
                return UIColor(red: 49.0/255.0, green: 49.0/255.0, blue: 49.0/255.0, alpha: 1.0)
            
            case .lightBlue, .activeBlue:
                return UIColor.blue

            case .missingInput:
                return UIColor.red.withAlphaComponent(0.8)
        }
    }
}
#endif

