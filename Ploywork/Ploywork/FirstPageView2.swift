//
//  FirstPageView2.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 27/10/1444 AH.
//

import SwiftUI

struct FirstPageView2: View {
    @State var Title: String = ""
    @State var Organisations: String = ""
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(" Title")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("title", text: $Title )
                        
                    }
                Section(header: Text("Organisation")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("Organisation", text: $Organisations )
                    }
                
                Button(action: {                }) {
                    Text("Next")
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                }
                Button(action: {                }) {
                    Text("Skip!, it's hard to choose on thing..")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                }.navigationBarTitle("First, What's the main thing do you")
                
            }
            
        }}
    
    struct FirstPageView2_Previews: PreviewProvider {
        static var previews: some View {
            FirstPageView2()
        }
    }
}
