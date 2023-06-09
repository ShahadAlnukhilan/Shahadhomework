

import Foundation

class ApiManager {
    
    private let service = ServiceManager()
    
    func getPost(id: String, completion: @escaping (Result<Post, Error>) -> Void) {
        service.callService(method: .get, path: .post, pathId: id) { (result: Result<Post, Error>) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getPosts(completion: @escaping (Result<[Post], Error>) -> Void) {
        service.callService(method: .get, path: .posts) { (result: Result<[Post], Error>) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getCommentsOfPost(id: String, completion: @escaping (Result<[Comment], Error>) -> Void) {
        service.callService(method: .get, path: .commentsOfPost, pathId: id) { (result: Result<[Comment], Error>) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getAuthor(id: String, completion: @escaping (Result<Author, Error>) -> Void) {
        service.callService(method: .get, path: .user, pathId: id) { (result: Result<Author, Error>) in
            switch result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}


extension String
{
    func replace(_ target: String, withThis: String) -> String
    {
        return self.replacingOccurrences(of: target, with: withThis, options: NSString.CompareOptions.literal, range: nil)
    }
}
