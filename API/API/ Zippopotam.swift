
import SwiftUI
struct ZippopotamData : Codable{

    let code: Int
    let country : String
    let CountryAbbreviation: String
 
    
}
    
    struct Zippopotam: View {
        @State private var Info = ZippopotamData(code: 0, country: "", CountryAbbreviation: "")
        
        var body: some View {
            VStack{
                Text(String("The Code is :\(Info.code)"))
                 .frame(maxWidth:.infinity)
                Text(Info.country)
                    .frame(maxWidth:.infinity)
                Text(Info.CountryAbbreviation)
                    .frame(maxWidth:.infinity)

            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData() async {
            do {
                let url = URL(string:"https://api.zippopotam.us/us/33162")!
                
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                let serverZippopotam = try JSONDecoder().decode(ZippopotamData.self, from: data)
                Info = serverZippopotam
                
            } catch {
                print("error \(error)")
            }
        }
        
    }


struct Zippopotam_Previews: PreviewProvider {
    static var previews: some View {
        Zippopotam()
    }
}
