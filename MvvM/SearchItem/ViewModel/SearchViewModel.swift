

import Foundation
@MainActor class SearchViewModel: ObservableObject {
    @Published var items = [
        "Shahad",
        "Noura",
        "Dalal"
    ]

    func updateItem(at index: Int, with value: String) {
            items[index] = value
        }
}
