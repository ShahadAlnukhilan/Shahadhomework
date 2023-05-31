
import SwiftUI


struct GenderizeData : Codable{
    
    let count: Int
    let gender: String
    let name: String
    let probability : Double
 
    
}
    
    struct Genderize: View {
        @State private var Info = GenderizeData(count: 0, gender: "", name:  "", probability: 0.0)
        
        var body: some View {
            VStack{
                Text("The count is :\(Info.count)")
                   .frame(maxWidth:.infinity)
                Text("The gender is :\(Info.gender)")
                   .frame(maxWidth:.infinity)
                Text(String("The name is :\(Info.name)"))
                  .frame(maxWidth:.infinity)
                Text(String("The probability is :\(Info.probability)"))
                  .frame(maxWidth:.infinity)
      
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData( ) async {
            do {
                let url = URL(string:"https://api.genderize.io?name=luc")!
                
                //  var request = URLRequest(url: url)
                // request.setValue("60443ea109msh39948688be1ea34p178fb1jsnf15374fd621b", forHTTPHeaderField:"X-RapidAPI-Key")
                
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                //              print(String(data: data, encoding: .utf8))
                let serverGenderize = try JSONDecoder().decode(GenderizeData.self, from: data)
                //            print('')
                Info = serverGenderize
                
            } catch {
                print("error \(error)")
            }
        }
        
    }


struct Genderize_Previews: PreviewProvider {
    static var previews: some View {
        Genderize()
    }
}
