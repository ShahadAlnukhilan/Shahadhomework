import SwiftUI

struct ChatsView: View {
    @State var message = ""
 //   @StateObject var imagePicker =
    var body: some View {
        NavigationView{
            VStack{
                
                ScrollView{}
                HStack (spacing: 15){
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.gray)
                        
                    })
                    TextField("Message", text : $message)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.primary.opacity(0.06))
                        .clipShape(Capsule())
                    Button(action: {}, label: {
                        Image(systemName: "camera")
                            .font(.title2)
                        .foregroundColor(.gray)})
                    .toolbar {
                        ToolbarItem(id: "PROFILE", placement: .navigationBarLeading, showsByDefault: true){
                            HStack(spacing:8){
                    
                                  
                                 
                                Text("Sara").fontWeight(.semibold)
                                Image("10")
                                .resizable()
                                .frame(width: 35, height: 35)
                                
                            }.padding(.horizontal,100)
                               
                         }
                     }
                    .toolbar {
                     ToolbarItem(placement: .navigationBarLeading){
                         Button(action: {},
                                label:{
                             Image(systemName:"chevron.left")
                                 .padding()
                         })
                     }
                     
                 }
                    
        
                     
                    Button(action: {}, label: {
                        Image(systemName: "mic")
                            .font(.title2)
                        .foregroundColor(.gray)})
                }.padding(.horizontal)
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}
struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
