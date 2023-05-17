//
//  JoinView2.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 27/10/1444 AH.
//

import SwiftUI

struct JoinView2: View {
    @State var email: String = ""
    @State var Password: String = ""
    var body: some View {
        NavigationView{
            VStack {
                
                NavigationView {
                    Form {
                        Section(header: Text(" Email Address")
                            .fontWeight(.black)
                            .foregroundColor(Color.black)) {
                                TextField("Enter Your Email", text: $email)
                                Section(header: Text(" Password")
                                    .fontWeight(.black)
                                    .foregroundColor(Color.black)) {
                                        TextField("Password", text: $Password)
                                    }
                                Button(action: {                }) {
                                    Text("JOIN")
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .bottom)
                                } }
                    }
                    
                }.navigationBarTitle("Login")}}
        
    }}
         
        
        

struct JoinView2_Previews: PreviewProvider {
    static var previews: some View {
        JoinView2()
    }
}
