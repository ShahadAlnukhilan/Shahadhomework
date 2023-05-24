//
//  OnBoarding2.swift
//  Interface
//
//  Created by Shahad Alnukhilan on 02/11/1444 AH.
//

import SwiftUI

struct OnBoarding2: View {
    
    var OnBoardingData : [OnboardingItem2] = [
        OnboardingItem2(image:"IMG_6141", title: "Better Farmer Lives",  description:"Helping farms lives a happier life - a batter life."),
        OnboardingItem2(image:"IMG_6142", title: "Farmer loan Help",  description:"Education them in incerasing potential. "),]
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                TabView {
                    ForEach(0 ..< 3) { index in //OnBoardingData.count
                        let element = OnBoardingData[index]
                        OnBoardingCard(onboardingitem1: element)
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
fileprivate struct OnBoardingCard: View {
    let onboardingitem1 : OnboardingItem2
    var body: some View {
        
        VStack {
            Image(onboardingitem1.image)
                .resizable()
                .frame(width:250, height: 250)
                .padding(.bottom,30)
            Text(onboardingitem1.title)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
                .padding(.bottom,10)
            Text(onboardingitem1.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
                .padding(.bottom,10)
        }}}

struct OnBoarding2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2()
    }
}
