//
//  FirstPageView.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 26/10/1444 AH.
//

import SwiftUI

struct FirstPageView: View {
    var body: some View {
        
        VStack {
            ZStack {
                Image("IMG_6069")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000, height: 1000)
                Image("IMG_6070")
                    .resizable()
                    .padding()
                    .scaledToFit()
                .frame(width: 500, height: 800, alignment: .top)
                .multilineTextAlignment(.center)
                 .lineLimit(2)
                Text("Discover opportunities and collaborate ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 100, alignment: .top)
                    .padding()
                
                Text("The professional network designed for collaboration ")
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100, alignment: .centerLastTextBaseline)
                Button(action: {                }) {
                    Text("JOIN POLYWOEK")
                        .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .frame(width: 300, height: 300, alignment: .bottom)

                }
                Button(action: {                }) {
                    Text("LOG IN")
                        .font(.headline)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    .frame(width: 1000, height: 400, alignment: .bottom)

                }

                }
            
                }

            }
        
        }
    


struct FirstPageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPageView()
    }
}
