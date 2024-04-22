//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Shazeen Thowfeek on 19/04/2024.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}

