
import SwiftUI

struct OnBoardingView: View {
    var OnBoardingData : [OnboardingItem] = [
        OnboardingItem(image:"2", title:"Telegram", description:"Telegram delivers messages faster than any other application. "),
        OnboardingItem(image:"3", title:"Fast", description:"Telegram delivers messages faster than any other application. "),
        OnboardingItem(image:"4", title:"Free", description:"Telegram provides free unlimited cloud storage for chats and media."),
        OnboardingItem(image:"5", title:"Powerful", description:"Telegram has no limits on the size of your media and chats."),
        OnboardingItem(image:"6", title:"Secure", description:"Telegram keeps your messages safe from hacker attacks."),
        OnboardingItem(image:"7", title:"Cloud-Based", description:"Telegram lets your messages from multiple devices.")]
    var body: some View {
        
        NavigationView{
            VStack {
                TabView {
                    ForEach(0 ..< 6) { index in //OnBoardingData.count
                        let element = OnBoardingData[index]
                        OnBoardingCard(onboardingitem: element)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                NavigationLink {
                    StartMessaging()
                } label: {
                    Text("Start Messaging")
                        .bold()
                          .frame(width: 350, height: 55)
                           .foregroundColor(.white)
                            .background(Color.blue)
                              .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                }

                
                
                
            } }}}
struct OnBoardingView_Previews: PreviewProvider {
    
    static var previews: some View {
        OnBoardingView()
    }}
fileprivate struct OnBoardingCard: View {
    let onboardingitem : OnboardingItem
    var body: some View {
        
        VStack {
            Image(onboardingitem.image)
                .resizable()
                .frame(width:270, height: 240)
                .padding(.bottom,2)
            
            Text(onboardingitem.title)
                .font(.title)
                .bold()
                .padding(.bottom,2)
            Text(onboardingitem.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,70)
                .padding(.bottom,10)
        }}}
