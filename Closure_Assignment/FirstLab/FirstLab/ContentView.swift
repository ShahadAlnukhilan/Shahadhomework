//
//  ContentView.swift
//  FirstLab
//
//  Created by Shahad Alnukhilan on 24/10/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, everyone!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.pink)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
