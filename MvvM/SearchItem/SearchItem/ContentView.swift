

import SwiftUI

struct ContentView: View {
    @StateObject var vm = SearchViewModel()
    var body: some View {
        
            List(vm.items){ item in
                Text(item)
                TextField("Search", text: $vm.searchTerm)
                Button("Search") {
                    if let index = vm.searchItem(for: vm.searchTerm) {
                        Text("Found item at index \(index)")
                    } else {
                        Text("No item found")
                    }
                }}}
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    
