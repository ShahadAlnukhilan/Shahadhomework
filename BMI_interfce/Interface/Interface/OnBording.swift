
import SwiftUI

struct OnBording: View {
    
    
    var OnBoardingData : [OnboardingItem] = [
        OnboardingItem(image:"IMG_6141",  description:"Lorem ipsum dolor sit amet, consectetuer."),
        OnboardingItem(image:"IMG_6142",  description:"Lorem ipsum dolor sit amet, consectetuer. "),
        OnboardingItem(image:"IMG_6144",  description:"Lorem ipsum dolor sit amet, consectetuer.")]
    
    var body: some View {
        
        NavigationView{
            VStack {
                TabView {
                    ForEach(0 ..< 3) { index in //OnBoardingData.count
                        let element = OnBoardingData[index]
                        OnBoardingCard(onboardingitem: element)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle())
                Button(action: {}, label: {
                    Text("Get Start")
                        .font(.headline)
                        .fontWeight(.bold)
                        .bold()
                        .frame(width: 190, height: 60)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))               .padding(.bottom,30)

                })
            }}}
}
struct OnBording_Previews: PreviewProvider {
    static var previews: some View {
        OnBording()
    }
}

fileprivate struct OnBoardingCard: View {
    let onboardingitem : OnboardingItem
    var body: some View {
        
        VStack {
            Image(onboardingitem.image)
                .resizable()
                .frame(width:250, height: 250)
                .padding(.bottom,30)
            Text(onboardingitem.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
                .padding(.bottom,10)
        }}}
