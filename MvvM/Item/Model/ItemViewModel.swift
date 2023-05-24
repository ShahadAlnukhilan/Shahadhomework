
import Foundation

import SwiftUI
extension ContentView{
   @MainActor class ItemViewModel: ObservableObject{
       @Published var count = 0
       @Published var allItems : [Item] = []
       
       func increment(){
           count += 1
       }
       func addItem(){
           let randomItems = ["Burger","Seafood","Rice","Pasta","Pizza"]
           let item = randomItems.randomElement()!
           let newItem = Item(name: item, description: "The selected food is number \(allItems.count+1)!")
           withAnimation{
               allItems.insert(newItem, at: 0)
           }
           }
       }
    }
