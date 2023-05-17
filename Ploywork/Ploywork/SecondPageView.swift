//
//  SecondPageView.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 27/10/1444 AH.
//

import SwiftUI

struct SecondPageView: View {
    @State var Title: String = ""
    @State var Organisations: String = ""
    @State var Start : String = ""
    @State var End: String = ""
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
                Section(header: Text("Start Date")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("dd/mm/yy", text: $Start )
                    }
                Section(header: Text("End Date")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("dd/mm/yy", text: $End )
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
        }
    }}

struct SecondPageView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageView()
    }
}
