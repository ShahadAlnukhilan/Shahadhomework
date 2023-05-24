//
//  BackgroundView.swift
//  BmiSlider
//
//  Created by Shahad Alnukhilan on 01/11/1444 AH.
//

import SwiftUI
struct BackgroundView: View {
  var backgroundColor: Color

  var body: some View {
    Rectangle()
      .fill(backgroundColor)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(backgroundColor: .black)
    }
}
