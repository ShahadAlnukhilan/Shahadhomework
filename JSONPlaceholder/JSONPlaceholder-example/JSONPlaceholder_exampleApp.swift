
import SwiftUI

@main
struct JSONPlaceholder_exampleApp: App {
    

    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.container.viewContext
            PostsListView(vm: PostListViewModel(context: viewContext))
                .environment(\.managedObjectContext, viewContext)
        }
    }
}
