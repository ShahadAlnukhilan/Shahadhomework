
import SwiftUI
struct OnBoarding1: View {
    
    
    var OnBoardingData : [OnboardingItem2] = [
        OnboardingItem2(image:"11", title: "Better Farmer Lives",  description:"Helping farms lives a happier life a batter life."),
        OnboardingItem2(image:"12", title: "Farmer loan Help",  description:"Education them in incerasing potential. ")]
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                TabView {
                    ForEach(0 ..< 2) { index in //OnBoardingData.count
                        let element = OnBoardingData[index]
                        OnBoardingCard(onboardingitem1: element)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle())
                Button(action: {}, label: {
                    Text("Next")
                        .font(.headline)
                        .fontWeight(.bold)
                        .bold()
                        .frame(width: 190, height: 60)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    
                })
            }}}
    
}

fileprivate struct OnBoardingCard: View {
    let onboardingitem1 : OnboardingItem2
    var body: some View {
        
        VStack {
            Image(onboardingitem1.image)
                .resizable()
                .frame(width:250, height: 250)
                .padding(.bottom,30)
            Text(onboardingitem1.title)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(.horizontal,30)
                .padding(.bottom,10)
            Text(onboardingitem1.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
                .padding(.bottom,10)
        }}}
struct OnBoarding1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1()
    }
}
