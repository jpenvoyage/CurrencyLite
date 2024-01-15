//
//  ContentView.swift
//  CurrencyLite
//
//  Created by Joao Leal on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State private var itemSelected = 0
    @State private var itemSelected2 = 1
    @State private var amount: String = ""
     private let currencies = ["USD", "GBP", "BRL"]
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Convert a currency")) {
                    TextField("Enter an amount", text: $amount)
                        .keyboardType(.decimalPad)
                    
                        Picker(selection: $itemSelected, label: Text("From")) {
                            ForEach(0 ..< currencies.count, id: \.self) { index in Text(self.currencies[index]).tag(index)}
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
