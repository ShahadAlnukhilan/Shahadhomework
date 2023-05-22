

import SwiftUI
struct StartMessaging: View {
    @State private var SearchTerm = ""
    @State private var PhoneNumber = ""

    var body: some View {
    
            VStack{
                Image("tt")
                    .resizable()
                    .frame(width:399, height: 250)
                    .padding(.bottom,6)
                Text("Your Phone")
                    .font(.title)
                    .bold()
                    .padding(.bottom,20)
                Text("Please confirm your country code and enter your phone number. ")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,50)
                Divider()
                    .padding(.bottom,6)
                NavigationLink {
                    CountrySearch()
                } label: {
                    Text("🇸🇦 Saudi Arabia")
                        .padding(.leading,30)
                        .padding(.bottom,6)
                    Spacer()
                }
                
                Divider()
                
                Button {
                } label: {
                    Text("+966")
                        .padding(.bottom,60)
                        .padding(.horizontal,30)
                    
                    TextField("00 000 000", text: $PhoneNumber)
                    
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal,1)
                        .padding(.bottom,60)
                    
                    Spacer()
                }
                
                .padding(.bottom,100)
                Spacer()
                NavigationLink (destination: OtpCode()){
                    Text("Continue")
                        .bold()
                        .frame(width: 350, height: 55)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                }
                }
            

        
            }}
    
        



struct StartMessaging_Previews: PreviewProvider {
    static var previews: some View {
        StartMessaging()
    }
}
