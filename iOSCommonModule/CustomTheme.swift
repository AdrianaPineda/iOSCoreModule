//
//  CustomTheme.swift
//  DigitalIdentity
//
//  Created by Adriana Pineda on 7/13/21.
//

import Foundation
import UIKit

enum TruoraColors: String {
    case primary = "truora_primary_color"
    case text = "truora_text_color"
    case disabled = "truora_disabled_color"
    case loadingText = "truora_loading_text_color"
}

public class CustomTheme {
    private var brandTheme: BrandTheme?

    public init(brandTheme: BrandTheme? = nil) {
        self.brandTheme = brandTheme
    }

    var primaryColor: UIColor? {
        if let primaryColor = brandTheme?.primaryColor {
            return UIColor(hex: primaryColor)
        }

        return UIColor(named: TruoraColors.primary.rawValue)
    }

    var secondaryColor: UIColor? {
        if let secondaryColor = brandTheme?.secondaryColor {
            return UIColor(hex: secondaryColor)
        }
        return UIColor(named: TruoraColors.primary.rawValue)
    }

    var disabledColor: UIColor? {
        UIColor(named: TruoraColors.disabled.rawValue)
    }

    var loadingTextColor: UIColor? {
        UIColor(named: TruoraColors.loadingText.rawValue)
    }

    var textColor: UIColor? {
        if let fontColor = brandTheme?.fontColor {
            return UIColor(hex: fontColor)
        }

        return UIColor(named: TruoraColors.text.rawValue)
    }
}
