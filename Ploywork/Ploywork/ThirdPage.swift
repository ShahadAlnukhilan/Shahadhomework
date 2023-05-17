//
//  ThirdPage.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 27/10/1444 AH.
//

import SwiftUI

struct ThirdPage: View {
    var body: some View {
        VStack {
            Text("To Started discovering people, you need a profile pic..")
                .lineLimit(2)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .lineLimit(0)
                .padding(.top)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .dynamicTypeSize(.accessibility1)
                .padding()
            
            Image("Image")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
         
                Button(action: {                }) {
                    Text("Upload")
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
                }
           
        }
        
    }
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
