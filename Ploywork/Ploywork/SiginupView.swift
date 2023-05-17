

import SwiftUI

struct SiginupView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var lastName: String = ""
    @State var Password: String = ""
    var body: some View {
        
        NavigationView{
            VStack {
                
                NavigationView {
                    Form {
                        Section(header: Text(" Email Address")
                            .fontWeight(.black)
                            .foregroundColor(Color.black)) {
                                TextField("Enter Your Email", text: $email)
                                
                            }
                        Section(header: Text(" First Name")
                            .fontWeight(.black)
                            .foregroundColor(Color.black)) {
                                TextField("First Name", text: $name)
                            }
                        Section(header: Text(" Last Name")
                            .fontWeight(.black)
                            .foregroundColor(Color.black)) {
                                TextField("Last Name", text: $lastName)
                            }
                        Section(header: Text(" Password")
                            .fontWeight(.black)
                            .foregroundColor(Color.black)) {
                                TextField("Password", text: $Password)
                            }
                        
                        Button(action: {                }) {
                        Text("SIGN UP")
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                                  } }.navigationBarTitle("Sign Up")
                    
                    }
        
                
                }
    
        }
    }
}

struct SiginupView_Previews: PreviewProvider {
    static var previews: some View {
        SiginupView()
    }
}
