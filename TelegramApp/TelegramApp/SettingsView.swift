//
//  SettingsView.swift
//  TelegramApp
//
//  Created by Shahad Alnukhilan on 30/10/1444 AH.
//

import SwiftUI
struct SettingsView: View {
    
    var body: some View {
       
            VStack (alignment: .center){
                Image("10").resizable()
                    .frame(width: 60, height: 60)
                Text("Shahad").fontWeight(.semibold)
                    .font(.headline)
                    .fontWeight(.light)
                Text("+966 530 151614")
                List {
                    Section(){
                   Text("⬇️ Saved Message")
                   Text("📞 Recent Calls")
                   Text("📱 Device ")
                    }
                    Section(){
                   Text(" 🔔Notification and Sounds")
                   Text("🌐 Language ")
                   Text("🔐Privacy and Security ")
                    }
                    }
         
                    }
                }
            }
            
        
    


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
