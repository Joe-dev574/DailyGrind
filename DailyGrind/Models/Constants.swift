//
//  Constants.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 2/5/25.
//

import SwiftUI

@Observable
class Constants {
    static let shared = Constants()
    
    var appTint: String = UserDefaults.standard.string(forKey: "appTint") ?? "OliveDrab"
    
    var tintColor: Color {
        return tints.first { $0.color == appTint }?.value ?? .blue
    }
   
}


