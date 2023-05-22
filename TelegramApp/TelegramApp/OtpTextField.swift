//
//  OtpTextField.swift
//  TelegramApp
//
//  Created by Shahad Alnukhilan on 30/10/1444 AH.
//

import SwiftUI

struct OtpTextField: View {
    let NumberOfFields : Int
    @State var entervalue : [String]
    init(NumberOfFields: Int){
        self.NumberOfFields = NumberOfFields
        self.entervalue = Array(repeating: "", count: NumberOfFields)
    }
    
    var body: some View {
    
        HStack {
            
            ForEach(0..<5, id: \.self){ index in
                TextField("", text: $entervalue[index])
                    .frame(width: 48, height: 48)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                    .mask(RoundedRectangle(cornerRadius: 4, style: .continuous))
          
            }
        }
    }
}

struct OtpTextField_Previews: PreviewProvider {
    static var previews: some View {
        OtpTextField(NumberOfFields:5)
    }
}
