//
//  BrandTheme.swift
//  DigitalIdentity
//
//  Created by Checho on 8/07/21.
//

import Foundation

public struct BrandTheme: Codable {
    let primaryColor: String?
    let secondaryColor: String?
    let fontColor: String?

    enum CodingKeys: String, CodingKey {
        case primaryColor = "primary_color"
        case secondaryColor = "secondary_color"
        case fontColor = "font_color"
    }

    public init(
        primaryColor: String?,
        secondaryColor: String?,
        fontColor: String?
    ) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.fontColor = fontColor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        primaryColor = try? values.decode(String.self, forKey: .primaryColor)
        secondaryColor = try? values.decode(String.self, forKey: .secondaryColor)
        fontColor = try? values.decode(String.self, forKey: .fontColor)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try? container.encode(primaryColor, forKey: .primaryColor)
        try? container.encode(secondaryColor, forKey: .secondaryColor)
        try? container.encode(fontColor, forKey: .fontColor)
    }
}
