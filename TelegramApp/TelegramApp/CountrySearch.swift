
import SwiftUI

struct CountrySearch: View {
    @State private var SearchTerm = ""
    var body: some View {
        NavigationView{
            
            List {
                Section(header: Text("A")){
                    Text("🇦🇫 Afghanistan                                             +93")
                    Text("🇦🇱 Albania                                                   +355")
                    Text("🇦🇸 American Samoa                                 +1674 ")
                    Text("🇦🇲 Armenia                                                 +374 ")
                    Text("🇦🇺 Austria                                                    +43 ")
                }
                Section(header: Text("B")){
                    Text("🇧🇧 Barbados                                             +1268      ")
                    Text("🇧🇭 Bahrain                                                  +973    ")
                    Text("🇧🇩 Bangladesh                                          +880  ")
                    Text("🇧🇯 Benin                                                     +229")
                }
                Section(header: Text("S")){
                    Text("🇸🇦 Saudi Arabia                                         +966")
                    Text(" 🇨🇭Switzerland                                            +41  ")
                    Text("🇸🇪 Sweden                                                  +46 ")
                    Text("🇰🇷 South Korea                                           +82 ")
                    Text("🇸🇴 Somalia                                                 +252 ")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Serach")
            .searchable(text: $SearchTerm)
        }
        
        }
    }
struct CountrySearch_Previews: PreviewProvider {
    static var previews: some View {
        CountrySearch()
    }
}
