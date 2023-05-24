

import SwiftUI

struct ContentView: View {
@StateObject private var vm = ItemViewModel()

    var body: some View {
        VStack {
            List(vm.items, id: \.self) { item in
                Text(item)
                Button("Delete") {
                    vm.removeItem(at: vm.items.firstIndex(of: item)!)
                }
            } 

            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
