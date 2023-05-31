

import SwiftUI


struct BankHolidayData : Codable{
    
  
    let title: String
    let date: Int
    let notes: String
    let bunting : Bool
    
}
    
    struct BankHoliday: View {
        @State private var Info = BankHolidayData(title: "", date: 0, notes: "", bunting: true)
        
        var body: some View {
            VStack{
                Text("The title is :\(Info.title)")
                   .frame(maxWidth:.infinity)
                Text(String("The date is :\(Info.date)"))
                  .frame(maxWidth:.infinity)
                Text("nots :\(Info.notes)")
                   .frame(maxWidth:.infinity)
             
                Text(String("The bunting is :\(Info.bunting)"))
                  .frame(maxWidth:.infinity)
      
            }
            .task{
                await loadData()
            }
        }
        
        
        func loadData( ) async {
            do {
                let url = URL(string:"https://www.gov.uk/bank-holidays.json")!
                
                //  var request = URLRequest(url: url)
                // request.setValue("60443ea109msh39948688be1ea34p178fb1jsnf15374fd621b", forHTTPHeaderField:"X-RapidAPI-Key")
                
                
                let (data, _) = try await URLSession.shared.data(from: url)
                
                //              print(String(data: data, encoding: .utf8))
                let serverBank = try JSONDecoder().decode(BankHolidayData.self, from: data)
                //            print('')
                Info = serverBank
                
            } catch {
                print("error \(error)")
            }
        }
        
    }


struct BankHoliday_Previews: PreviewProvider {
    static var previews: some View {
        BankHoliday()
    }
}
