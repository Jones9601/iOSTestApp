import Foundation

protocol CommentViewServiceDelegate {
    func getComments(completion: @escaping (Result<[CommentModel], NetworkError>) -> Void)
}

class CommentViewService: CommentViewServiceDelegate {
    func getComments(completion: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        RestAPIClient.getComments(completion: completion)
    }
}
