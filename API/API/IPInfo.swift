

import SwiftUI


struct IPInfoData : Codable{
    
    let ip: String
    let city: String
    let region : String
    let country: String
    let loc : String
    let postal : String
    let timezone : String
    let readme : String
      
}
    
    struct IPInfo: View {
        @State private var Info = IPInfoData(ip: "", city: "", region: "", country: "", loc: "", postal: "", timezone: "", readme: "")
        var body: some View {
            VStack{
                Text("The ip is :\(Info.ip)")
                   .frame(maxWidth:.infinity)
                Text("The city is :\(Info.city)")
                   .frame(maxWidth:.infinity)
                Text(String("The region is :\(Info.region)"))
                  .frame(maxWidth:.infinity)
                Text(String("The country is :\(Info.country)"))
                  .frame(maxWidth:.infinity)
                Text(String("The loc is :\(Info.loc)"))
                  .frame(maxWidth:.infinity)
                Text(String("The postal is :\(Info.postal)"))
                  .frame(maxWidth:.infinity)
                Text(String("The timezone is :\(Info.timezone)"))
                  .frame(maxWidth:.infinity)
                Text(String("The readme is :\(Info.readme)"))
                  .frame(maxWidth:.infinity)
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData( ) async {
            do {
                let url = URL(string:"https://ipinfo.io/161.185.160.93/geo")!
                
            
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                //              print(String(data: data, encoding: .utf8))
                let serverIPInfoData = try JSONDecoder().decode(IPInfoData.self, from: data)
                //            print('')
                Info = serverIPInfoData
                
            } catch {
                print("error \(error)")
            }
        }
        
    }


struct IPInfo_Previews: PreviewProvider {
    static var previews: some View {
        IPInfo()
    }
}
