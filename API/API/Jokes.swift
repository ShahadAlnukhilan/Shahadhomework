

import SwiftUI


struct JokesData : Codable{
    
    let type: String
    let setup: String
    let punchline : String
    let id : Int
    
}
    
    struct Jokes: View {
        @State private var Info = JokesData(type: "", setup: "", punchline: "", id: 0)
        var body: some View {
            VStack{
                Text("The type is :\(Info.type)")
                   .frame(maxWidth:.infinity)
                Text("The setup is :\(Info.setup)")
                   .frame(maxWidth:.infinity)
                Text("The punchline is :\(Info.punchline)")
                  .frame(maxWidth:.infinity)
                Text(String("The id is :\(Info.id)"))
                  .frame(maxWidth:.infinity)
          
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData( ) async {
            do {
                let url = URL(string:"https://official-joke-api.appspot.com/random_joke")!
                
            
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                //              print(String(data: data, encoding: .utf8))
                let serverJokesData = try JSONDecoder().decode(JokesData.self, from: data)
                //            print('')
                Info = serverJokesData
                
            } catch {
                print("error \(error)")
            }
        }
        
    }

struct Jokes_Previews: PreviewProvider {
    static var previews: some View {
        Jokes()
    }
}
