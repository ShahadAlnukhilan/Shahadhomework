

import Foundation
import SwiftUI
extension ContentView{
@MainActor class UpdateViewModel : ObservableObject {
        @Published var name = "Shahad"
        @Published var age = 25
        
        func changeName(to name: String) {
            self.name = name
        }
        
        func changeAge(to age: Int) {
            self.age = age
        }
    }
}
