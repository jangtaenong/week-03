//
//  ContentView.swift
//  week 03
//
//  Created by 공학관559 on 9/20/26.
//

import SwiftUI

struct ContentView: View {
    private let images = ["apple", "banana", "strawberry", "melon"]
    private let fruits = ["apple", "banana", "strawberry", "melon"]
    
    // selection 에 연결할 상태. 여기서는 "몇 번째인가"를 담으므로 Int 다.
    @State private var selectedIndex = 0
    
    private var fruitPicker: some View {
        Picker("과일", selection: $selectedIndex) {
            ForEach(fruits.indices, id: \.self) { i in
                Text(fruits[i]).tag(i)      // tag 가 Int
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            
            Image(images[selectedIndex])
                .resizable()
                .scaledToFit()
            
            Picker("fruits", selection: $selectedIndex){
                ForEach(images.indices, id: \.self){i in Text("\(i + 1)").tag(i)
                }
            }
            
            fruitPicker.pickerStyle(.segmented)
            
        }
        .pickerStyle(.segmented)
    }
}
#Preview {
    ContentView()
}
