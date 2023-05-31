
import SwiftUI
struct DataAgify : Codable{
    
    let age: Int
    let count: Int
    let name: String


    
}
    
    struct Agify: View {
        @State private var Info = DataAgify(age: 0, count: 0, name: "")
        
        var body: some View {
            VStack{
                Text(String("Age :\(Info.age)"))
                    .frame(maxWidth:.infinity)
                    .font(.title)
                Text("count:\(Info.count)")
                    .frame(maxWidth:.infinity)
                    .font(.title)
               Text("Name:\(Info.name)")
                .frame(maxWidth:.infinity)
                .font(.title)
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData( ) async {
            do {
                let url = URL(string:"https://api.agify.io?name=meelad")!
                
                //  var request = URLRequest(url: url)
                // request.setValue("60443ea109msh39948688be1ea34p178fb1jsnf15374fd621b", forHTTPHeaderField:"X-RapidAPI-Key")
                
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                //              print(String(data: data, encoding: .utf8))
                let serverBorad = try JSONDecoder().decode(DataAgify.self, from: data)
                //            print('')
                Info = serverBorad
                
            } catch {
                print("error \(error)")
            }
        }
        
    }


struct Agify_Previews: PreviewProvider {
    static var previews: some View {
        Agify()
    }
}
