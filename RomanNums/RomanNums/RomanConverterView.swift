//
//  RomanConverterView.swift
//  RomanNums
//
//  Created by Robert Clarke on 16/07/2020.
//  Copyright © 2020 Robert Clarke. All rights reserved.
//

import SwiftUI

struct RomanConverterView: View {
    @State private var romanNumeral = ""

    var result: Int {
        return RomanNumeralsConverter.convert(string: romanNumeral) ?? 0
    }

    var body: some View {
        Form {
            Section {
                TextField("Roman Numeral", text: $romanNumeral)
                    .keyboardType(/*@START_MENU_TOKEN@*/.alphabet/*@END_MENU_TOKEN@*/)
            }

            Section {
                Text("\(result)")
            }
        }
    }
}

struct RomanConverterView_Previews: PreviewProvider {
    static var previews: some View {
        RomanConverterView()
    }
}
