

import SwiftUI
//struct OnBordingView : View{
    

 //var OnBoardingData : [OnBordingItem] = [
  //  OnBordingItem(image:"2", title:"Telegram", discerption:"Telegram delivers messages faster than any other application. "),
 //   OnBordingItem(image:"3", title:"Fast", discerption:"Telegram delivers messages faster than any other application. "),
 //   OnBordingItem(image:"4", title:"Free", discerption:"Telegram provides free unlimited cloud storage for chats and media."),
  //  OnBordingItem(image:"5", title:"Powerful", discerption:"Telegram has no limits on the size of your media and chats."),
  //  OnBordingItem(image:"6", title:"Secure", discerption:"Telegram keeps your messages safe from hacker attacks."),
  //  OnBordingItem(image:"7", title:"Cloud-Based", discerption:"Telegram lets your messages from multiple devices.")]

//struct WelcomPage: View {
   // @State private var CurrentStep = 0
   // var body: some View {
        
        //TabView(selection: $CurrentStep){
            
          //  VStack {
      //          OnBoardingCard()
          //  }}
    //}




/*struct WelcomPage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomPage()
    }
}
   // .tabViewStyle(PageTabViewStyle())
              

/*fileprivate struct OnBoardingCard: View {
    let onBordingItem : OnBordingItem
    var body: some View {
        VStack {
            
            
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
