//
//  ContactsView.swift
//  TelegramApp
//
//  Created by Shahad Alnukhilan on 30/10/1444 AH.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        ZStack{
            Text("Contant")
            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
            VStack {
                PopList()
            }
        }
        
    }}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
struct PopList: View {
    @State private var SearchText = ""
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                HStack {
                    TextField("Search",text: $SearchText)}
                .padding(.leading,60)
                .background(Color(.systemGray5))
                .cornerRadius(5)
                .padding(.horizontal,15)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Spacer()
                    }.padding(.horizontal,35)
                    .foregroundColor(.gray)
                )
                
                VStack{
                    ForEach(0..<10,id: \.self){ _ in
                        HStack{
                            Image("10").resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                            
                            
                            VStack (alignment: .leading){
                                Text("Sara").fontWeight(.semibold)
                                Text("Last Seen  21 minutes ago")
                                    .font(.headline)
                                    .fontWeight(.light)
                                Divider()
                            }
                        }
                    }
                    .navigationTitle("Contacts")
                    .multilineTextAlignment(.center)
                }.padding()
            }.background(Color.white)
        }.navigationTitle("Contacts")
    }}

