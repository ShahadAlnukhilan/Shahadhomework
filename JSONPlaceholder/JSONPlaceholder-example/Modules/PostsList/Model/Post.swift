
import Foundation

struct Post: Decodable {
    var id: Int
    var userId: Int
    var title: String
    var body: String
}
