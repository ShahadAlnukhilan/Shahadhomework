

import SwiftUI

struct pizza : Codable{
   let name: String
   let price: Int
   let description : String
    
 
}

struct food1: View {
    @State private var Pizza = pizza(name: "", price: 0, description: "")
    
    var body: some View {
        VStack{
            Text(Pizza.name)
                .frame(maxWidth:.infinity)
                .font(.title)
                .padding(.all)
            
            Text(String("\(Pizza.price)"))
                .frame(maxWidth:.infinity)
                .font(.title)
                .padding(.all)
            
            Text(Pizza.description)
                .frame(maxWidth:.infinity)
                .font(.title)
                .padding(.all)
        }
        .task{
            await loadData()
        }
    }
    
    
    func loadData( ) async {
        do {
            let url = URL(string:"https://pizza-and-desserts.p.rapidapi.com/pizzas/1")!
            
            var request = URLRequest(url: url)
            request.setValue("60443ea109msh39948688be1ea34p178fb1jsnf15374fd621b", forHTTPHeaderField:"X-RapidAPI-Key")
            
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
//              print(String(data: data, encoding: .utf8))
            let serverFood = try JSONDecoder().decode(pizza.self, from: data)
            Pizza = serverFood
            
        } catch {
            print("error \(error)")
        }
    }
    
}
struct food1_Previews: PreviewProvider {
    static var previews: some View {
        food1()
    }
}
