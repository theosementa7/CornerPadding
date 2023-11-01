//
//  CornerPadding.swift
//  CornerPadding
//
//  Created by KaayZenn on 01/11/2023.
//

import SwiftUI

struct CornerPadding: ViewModifier {
    enum Corner {
        case bottomRight, bottomLeft, topLeft, topRight
    }
    
    var corner: Corner
    var value: CGFloat
    
    func body(content: Content) -> some View {
        switch corner {
        case .bottomRight:
            return content.padding([.bottom, .trailing], value)
        case .bottomLeft:
            return content.padding([.bottom, .leading], value)
        case .topLeft:
            return content.padding([.top, .leading], value)
        case .topRight:
            return content.padding([.top, .trailing], value)
        }
    }
}

extension View {
    func padding(corner: CornerPadding.Corner, _ value: CGFloat) -> some View {
        modifier(CornerPadding(corner: corner, value: value))
    }
}
