//
//  File.swift
//  
//
//  Created by Mark Robberts on 2023/06/20.
//

import SwiftUI
import UIKit

@available(macOS 13.0, *)
@available(iOS 16.0, *)


/// Provide a convenient extension to UI color in order to input as a Hex string
///
/// - Parameters:
///   - hex:  Hex String {Valid Color) format:"#%06x"  example: #2b2b2b
///   - alpha: Alpha value representing transparency
///
/// - Returns: UIColor
///
public extension UIColor {
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue:  CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha
        )
    }
    
    /// Returns a 6-Character hex String
    ///
    /// - Parameters:
    ///   - Self:  UIColor
    ///
    /// - Returns: Hex String {Valid Color) format:"#%06x"  example: #2b2b2b
    ///
    var asHexString: String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
    
    
    /// returns a grayscale color representation of the ui color
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: UIColor Grey
    ///
    var grayscaleColor: UIColor {
        guard let components = self.cgColor.components else {  return self }
        
        let grayLevel = (components[0] + components[1] + components[2]) / 3.0
        
        return UIColor(white: grayLevel, alpha: components[3])
    }
    
    /// Returns an inverted UI color
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Function return
    /// - Note:
    ///     Assuming that the color has RGBcomponent colorSpace
    ///
    var invertedColor: UIColor {
        guard let components = self.cgColor.components else { return self }
        
        let invertedComponents = components.map { 1.0 - $0 }
        
        return UIColor(red: invertedComponents[0], green: invertedComponents[1], blue: invertedComponents[2], alpha: components[3])
    }
    
    
    /// Adjusts the brightness of a color
    ///
    /// - Parameters:
    ///   - Self: UIColor
    ///   - brightness: CGFloat value, either positive or negative
    ///
    /// - Returns: UIColor
    ///
    func adjustBrightness(_ brightness: CGFloat) -> UIColor {
        guard let components = self.cgColor.components else { return self }
        
        var adjustedComponents = components
        
        for i in 0..<3 {  adjustedComponents[i] *= brightness }
        
        return UIColor(red: adjustedComponents[0], green: adjustedComponents[1], blue: adjustedComponents[2], alpha: components[3])
    }
    
    
    /// Gets the mid-Color between this and a supplied UIColor
    ///
    /// - Parameters:
    ///   - Self:
    ///   - color: UIColor other
    ///
    /// - Returns: UIColor
    /// - Note:
    ///     Any additional comments
    func midPointColor(with color: UIColor) -> UIColor {
        guard let components1 = self.cgColor.components,
              let components2 = color.cgColor.components,
              components1.count == components2.count else {
            return self
        }
        
        var midComponents: [CGFloat] = []
        
        for i in 0..<components1.count {
            let midValue = (components1[i] + components2[i]) / 2.0
            midComponents.append(midValue)
        }
        
        return UIColor(red: midComponents[0], green: midComponents[1], blue: midComponents[2], alpha: midComponents[3])
    }
    
    

    
}



@available(macOS 13.0, *)
@available(iOS 16.0, *)


public extension Color {

    
    
    /// Converts to UIColor and then Hex String
    ///
    /// - Parameters:
    ///   - Self:  Description of #1
    ///
    /// - Returns: String from Color
    ///
    var hexString: String {
        let rgbColor = UIColor(self)
        return rgbColor.asHexString
    }
    
    
    /// Converts to UIColor and then the Inverted color
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Color Inverted
    ///
    var inverted: Color {
        let rgbColor = UIColor(self)
        return Color(uiColor: rgbColor.invertedColor )
    }
    
    /// Converts to UIColor and then Greyscale color
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Color in Greyscale
    ///
    var greyScaled: Color {
        let rgbColor = UIColor(self)
        return Color(uiColor: rgbColor.grayscaleColor )
    }
    
    
    /// Converts UIColors  and then finds the Min-oint between the two
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Color in Greyscale
    ///
    func midColor(with color: Color) -> Color {
        let rgbOne = UIColor(self)
        let rgbTwo = UIColor(color)
        
        return Color(uiColor: rgbOne.midPointColor(with: rgbTwo) )
    }
    

    /// Calculates the brightness of a color and responds
    ///
    /// - Parameters:
    ///   - self: Color self
    ///
    /// - Returns: Boolean true if it is dark
    ///
    var isDarkerColor: Bool {
        let rgbColor = UIColor(self)
        
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        
        rgbColor.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        // algorithm from: http://www.w3.org/WAI/ER/WD-AERT/#color-contrast
        brightness = ((r * 299) + (g * 587) + (b * 114)) / 1000;
        if (brightness < 0.5) {
            return true
        }
        else {
            return false
        }
    }
 
    
    /// Calculates the brightness ratio of a lolor
    ///
    /// - Parameters:
    ///   - self: Color self
    ///
    /// - Returns: CGFloat
    ///
    var brightnessLevel: CGFloat {
        let rgbColor = UIColor(self)
        
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        
        rgbColor.getRed(&r, green: &g, blue: &b, alpha: &a)

        brightness = ((r * 299) + (g * 587) + (b * 114)) / 1000;

        return (brightness * 20).rounded() / 20
    }
    
    
    
    
    /// Converts UIColors  and then adjusts the brightness
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Color with brightness
    ///
    func withBrightness(_ brightness: CGFloat) -> Color {
        let rgbColor = UIColor(self)
        
        return Color(uiColor: rgbColor.adjustBrightness(brightness) )
    }
    
    /// Converts to UIColor from the hex
    ///
    /// - Parameters:
    ///   - Self:
    ///
    /// - Returns: Color from Hex String
    ///
    func fromHexString(_ hexString: String) -> Color {
        var hex: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if hex.hasPrefix("#")  { hex = String(hex.dropFirst())  }
        if hex.hasPrefix("0x") { hex = String(hex.dropFirst(2)) }
        if hex.count != 6      { hex = "000000" }
        
        return Color(uiColor: UIColor(hex: hex) )
    }

}
