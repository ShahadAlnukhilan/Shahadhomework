

import Foundation

struct ApiContants {
    static let url = "https://jsonplaceholder.typicode.com"
}

enum ApiMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

enum ApiPath: String {
    case post = "/posts/{ID}"
    case posts = "/posts"
    case user = "/users/{ID}"
    case users = "/users"
    case comment = "/comments/{ID}"
    case comments = "/comments"
    case commentsOfPost = "/posts/{ID}/comments"
}
