//
//  ContentView.swift
//  RomanNums
//
//  Created by Robert Clarke on 16/07/2020.
//  Copyright © 2020 Robert Clarke. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            RomanConverterView()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Roman")
                    }
                }
                .tag(0)
            ArabicConverterView()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Arabic")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
