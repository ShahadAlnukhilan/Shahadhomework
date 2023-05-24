
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            @ObservedObject var viewModel = UpdateViewModel()
            Text("Name: \(viewModel.name)")
            Text("Age: \(viewModel.age)")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
