

import SwiftUI

struct ContentView: View {
    
    @State private var height: Double = 1.7
    @State private var weight: Double = 70.0
  

    var body: some View {
        VStack{
           
                Text("BMI Calculator")
                    .padding(.top)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .dynamicTypeSize(.accessibility1)
                    .padding()
            VStack(alignment: .leading){
                Text("Height:")
                    .multilineTextAlignment(.center)
                    .padding()
                Slider(value: $height, in: 1.5...2.0){
                    Text("Height")
                } minimumValueLabel: {
                    Text("0").font(.title2).fontWeight(.thin)
                } maximumValueLabel: {
                    Text("250").font(.title2).fontWeight(.thin)
                    
                }.padding()
                Text("Weight:")
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Slider(value: $weight, in: 40...100) {
                } minimumValueLabel: {
                    Text("0").font(.title2).fontWeight(.thin)
                } maximumValueLabel: {
                    Text("500").font(.title2).fontWeight(.thin)
                }.padding()
                
          
                
            }.padding()
         
      
            
            
            Text("Your BMI is \(calculateBMI() ,specifier: "%.1f")")
            Button(action: { }) {
                Text("Calculate")
                    .bold()
                    .frame(width: 350, height: 55)
                    .foregroundColor(.white)
                    .background(Color.black)
                .mask(RoundedRectangle(cornerRadius: 20, style:  .continuous))
                
                    
            }
          
          
        }
        
  
    }
    func calculateBMI() -> Double {
        return weight / (height * height)
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
