import SwiftUI


struct SplashScreenView: View {

    var body: some View {
        VStack {
            ZStack{
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                Image("oo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFit()
                    .frame(width: 260, height: 90)
            }
            
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
