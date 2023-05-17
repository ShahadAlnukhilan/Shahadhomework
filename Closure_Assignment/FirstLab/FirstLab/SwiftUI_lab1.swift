//
//  SwiftUI_lab1.swift
//  FirstLab
//
//  Created by Shahad Alnukhilan on 24/10/1444 AH.
//

import SwiftUI

struct SwiftUI_lab1: View {
    var body: some View {
        Text("Hello, World! this is the swiftful thinking.. I'm relly enjoying this course".capitalized)
           // .font(.body)
           // .fontWeight(.semibold)
          //  .bold()
         //   .underline(true, color: Color.pink)
         //   .italic()
           // .strikethrough(true , color: Color.green)
         //   .font(.system(size: 24, weight: .semibold, design: .serif))
           // .baselineOffset(50.0)
       .multilineTextAlignment(.leading)
       .foregroundColor(.pink)
       .frame(width:200, height: 100, alignment: .center)
       .minimumScaleFactor(0.1)
        //    .kerning(10)
    }
}

struct SwiftUI_lab1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_lab1()
    }
}
