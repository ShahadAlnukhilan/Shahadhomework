//
//  ImageView2.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 26/10/1444 AH.
//

import SwiftUI

struct ImageView2: View {
    var body: some View {
        
        VStack {
            
            ZStack  {
                Image("IMG_6069")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000, height: 1000)
                Image("idryUyCDc2")
                    .resizable()
                    .padding()
                    .scaledToFit()
                .frame(width: 150, height: 400, alignment: .top)
                .multilineTextAlignment(.center)
                 .lineLimit(2)
                Image("loading-svgrepo-com")
                    .resizable(resizingMode: .stretch)
                    .scaledToFit()
                .frame(width: 30, height: 40 )
                .multilineTextAlignment(.center)
                .lineLimit(4)
               


                  
            }
           
        
        }//.frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(Color.purple)
        
        
    }
                
   }


struct ImageView2_Previews: PreviewProvider {
    static var previews: some View {
        ImageView2()
    }
}
