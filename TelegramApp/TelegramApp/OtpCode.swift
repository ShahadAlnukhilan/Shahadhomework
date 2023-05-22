//
//  OtpCode.swift
//  TelegramApp
//
//  Created by Shahad Alnukhilan on 30/10/1444 AH.
//

import SwiftUI

struct OtpCode: View {
    var body: some View {
       
            VStack{
                Image("9")
                    .resizable()
                    .frame(width:700, height: 250)
                    .padding(.bottom,1)
                Text("Your Phone")
                    .font(.title)
                    .bold()
                    .padding(.bottom,2)
                Text("Please confirm your country code and enter your phone number. ")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,13)
                   
                OtpTextField(NumberOfFields:5)
                    .padding(.bottom,10)
                Spacer()
                NavigationLink (destination: HomePage()){
                    Text("Verification")
                        .bold()
                        .frame(width: 350, height: 55)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                }
                }
            }}
            


struct OtpCode_Previews: PreviewProvider {
    static var previews: some View {
        OtpCode()
    }
}
