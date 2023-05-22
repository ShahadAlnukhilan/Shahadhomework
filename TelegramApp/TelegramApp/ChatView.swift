import SwiftUI

struct ChatView: View {
    @State var message = ""
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
                    Button(action: {}, label: {
                        Image(systemName: "mic")
                            .font(.title2)
                        .foregroundColor(.gray)})
                }.padding(.horizontal)
            }
        }
        
    }}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
