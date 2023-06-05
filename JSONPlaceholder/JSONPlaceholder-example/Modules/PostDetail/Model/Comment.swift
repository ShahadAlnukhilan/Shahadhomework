
import Foundation

struct Comment: Decodable {
    var id: Int
    var postId: Int
    var name: String
    var email: String
    var body: String
}
