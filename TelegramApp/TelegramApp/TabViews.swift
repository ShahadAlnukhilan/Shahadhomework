
import SwiftUI
/*struct OnBoarding1{
    
    let image : String
    let title :String
    let discerption : String
}


/*struct TabViews: View {
    @State private var CurrentStep = 0
    var body: some View {
        
        TabView(selection: $CurrentStep){
            ForEach(0..<OnBoardingStep.count){ it in
                VStack{
                    Spacer()
                    Image(OnBoardingStep[it].image)
                        .resizable()
                        .frame(width:270, height: 240)
                        .padding(.bottom,9)
                    Text(OnBoardingStep[it].title)
                        .font(.title)
                        .bold()
                        .padding(.bottom,10)
                    Text(OnBoardingStep[it].discerption)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,70)
                        .padding(.bottom,200)
                    Spacer()
                    Button(action:{
                    },  label: {
                        Text("Start Messaging")
                            .foregroundColor(.white)
                            .font(.body)
                            .bold()
                            .frame(width: 350, height: 54)
                            .background(Color.blue)
                            .mask(RoundedRectangle(cornerRadius:20, style: .continuous))
                })
                }.tag(it)
                
           
                   
            }}
 

        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
         .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .tabViewStyle(PageTabViewStyle())
       
    

    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
