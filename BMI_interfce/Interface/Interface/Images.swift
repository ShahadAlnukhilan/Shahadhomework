//
//  Images.swift
//  Interface
//
//  Created by Shahad Alnukhilan on 02/11/1444 AH.
//

import SwiftUI

struct Images: View {
    @State private var SearchTerm = ""
    @State private var PhoneNumber = ""
    
    var body: some View {
        
        VStack{
            Image("tt")
                .resizable()
                .frame(width:399, height: 250)
                .padding(.bottom,6)
            Text("Your Phone")
                .font(.title)
                .bold()
                .padding(.bottom,20)
            Text("Please confirm your country code and enter your phone number. ")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
            Divider()
                .padding(.bottom,6)
            
            Button {
            } label: {
                Text("+966")
                    .padding(.bottom,60)
                    .padding(.horizontal,30)
                
                TextField("00 000 000", text: $PhoneNumber)
                
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal,1)
                    .padding(.bottom,60)
                
                Spacer()
            }
            
            .padding(.bottom,100)
            
        }
    }
}



struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
