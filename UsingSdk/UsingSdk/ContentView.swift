//
//  ContentView.swift
//  UsingSdk
//
//  Created by Steven Sherry on 3/9/23.
//

import SwiftUI
import UsingPortals

struct ContentView: View {
    var body: some View {
        VStack {
           NativeView(key: "YOUR_KEY_HERE")
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
