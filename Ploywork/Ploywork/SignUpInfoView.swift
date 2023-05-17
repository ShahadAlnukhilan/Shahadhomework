//
//  SignUpInfoView.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 27/10/1444 AH.
//

import SwiftUI

struct SignUpInfoView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var lastName: String = ""
    @State var Password: String = ""
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text(" Email Address")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("Shahad11@gmail.com", text: $email)
                        
                    }
                Section(header: Text("First Name")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("Shahad", text: $name)
                    }
                Section(header: Text(" Last Name")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("Alnukhilan", text: $lastName)
                    }
                Section(header: Text(" Password")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)) {
                        TextField("*********", text: $Password)
                         
                    }  
                
                Button(action: {                }) {
                Text("SIGN UP")
                .fontWeight(.black)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .bottom)
                          } }.navigationBarTitle("Sign Up")
            
            }    }
}

struct SignUpInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpInfoView()
    }
}
