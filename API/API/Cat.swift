
import SwiftUI
struct CatData : Codable{
    
    let fact: String
    let length: Int
    
}
    
    struct Cat: View {
        @State private var Info = CatData(fact: "", length: 0)
        
        var body: some View {
            VStack{
                Text("The Facts is :\(Info.fact)")
                 .frame(maxWidth:.infinity)
               Text(String("The Length is :\(Info.length)"))
                 .frame(maxWidth:.infinity)
                
          
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData() async {
            do {
                let url = URL(string:"https://catfact.ninja/fact")!
                
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                let serverCat = try JSONDecoder().decode(CatData.self, from: data)
                Info = serverCat
                
            } catch {
                print("error \(error)")
            }
        }
        
    }
    struct Cat_Previews: PreviewProvider {
        static var previews: some View {
            Cat()
        }
    }


