//
//  ContentView.swift
//  DemoToggle
//
//  Created by Rishabh on 27/05/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isEnabled: Bool = true
    
    var body: some View {
        
        Toggle(isOn: $isEnabled) {
            Text("Toggle is \(isEnabled)")
        }
//        .toggleStyle(CheckboxStyle()) // For Toggle Style
//        .labelsHidden() // To hide label
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: String Interpolation With Boolean

extension LocalizedStringKey.StringInterpolation {
    
    mutating func appendInterpolation(_ value: Bool) {
        appendInterpolation(String(value))
    }
}

struct CheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        return Image(systemName: configuration.isOn ? "checkmark.square" : "square")
        .resizable()
        .frame(width: 50, height: 50)
    }
}


