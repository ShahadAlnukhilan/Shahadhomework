import Foundation
import SwiftUI
extension ContentView{
   @MainActor class ItemViewModel: ObservableObject{
       @Published var items = [
              "Shahad",
              "Noura",
              "Dalal"
          ]
       func removeItem(at index: Int) {
              items.remove(at: index)
          }
       }
    }

