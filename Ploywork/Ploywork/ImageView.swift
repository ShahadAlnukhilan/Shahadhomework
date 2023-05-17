//
//  ImageView.swift
//  Ploywork
//
//  Created by Shahad Alnukhilan on 26/10/1444 AH.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        
        VStack {
        
            ZStack {
                Image("IMG_6069")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000, height: 1000)
                Image("idryUyCDc2")
                    .resizable()
                    .scaledToFit()
                .frame(width: 111, height: 200)
            }
            
            
        }
        
    }
    
    
    struct ImageView_Previews: PreviewProvider {
        static var previews: some View {
            ImageView()
        }
    }
}
