//
//  ArabicConverterView.swift
//  RomanNums
//
//  Created by Robert Clarke on 17/07/2020.
//  Copyright © 2020 Robert Clarke. All rights reserved.
//

import SwiftUI

struct ArabicConverterView: View {
    @State private var arabicNumber = ""

    var result: String {
        guard let number = Int(arabicNumber) else {
            return ""
        }
        return RomanNumeralsConverter.convert(int: number) ?? ""
    }

    var body: some View {
        Form {
            Section {
                TextField("Arabic Number", text: $arabicNumber)
                    .keyboardType(.numberPad)
            }

            Section {
                Text("\(result)")
            }
        }
    }
}

struct ArabicConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ArabicConverterView()
    }
}
