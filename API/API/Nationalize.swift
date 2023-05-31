

import SwiftUI
import Foundation

struct Datanationalize: Codable{
    let results : [country]
}

struct country: Codable , Identifiable{
     
}
struct Nationalize: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Nationalize_Previews: PreviewProvider {
    static var previews: some View {
        Nationalize()
    }
}
