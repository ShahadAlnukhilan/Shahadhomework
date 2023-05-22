
import SwiftUI
struct HomePage: View {
  
    var body: some View {
        
        TabView{
            ContactsView()
                      
        .font(.system(size: 30, weight: .bold, design: .rounded))
        .tabItem {
        Image(systemName: "person.crop.circle")
        Text("Contacts")}
            
            ChatsView()
                 .font(.system(size: 30, weight: .bold, design: .rounded))
                 .tabItem {
                     Image(systemName: "message.fill")
                     Text("Chats")
                 }
         
            SettingsView()
             .font(.system(size: 30, weight: .bold, design: .rounded))
             .tabItem {
                 Image(systemName: "gearshape.fill")
                 Text("Settings")
             }
        }
        
    }}
        
      

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
