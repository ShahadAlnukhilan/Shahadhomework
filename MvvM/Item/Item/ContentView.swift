

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ItemViewModel()
    var body: some View {
        VStack {
            List(vm.allItems){ item in
                Text(item.name)
                Text(item.description)
            }
            .scrollContentBackground(.hidden)
            Button("Add Food"){
                vm.addItem()
            }.listStyle(.plain)
                
                .background(.thinMaterial)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
