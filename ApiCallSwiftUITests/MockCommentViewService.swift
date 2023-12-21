@testable import ApiCallSwiftUI
import Foundation

class MockCommentViewService: CommentViewServiceDelegate {
    func getComments(completion: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        guard let jsonData = readLocalJsonFile() else {
            completion(.failure(.NoData))
            return
        }
        do {
            let obj = try JSONDecoder().decode([CommentModel].self, from: jsonData)
            completion(.success(obj))
        } catch {
            print(error)
            completion(.failure(.DecodingError))
        }
    }

    private func readLocalJsonFile() -> Data? {
        do {
            guard let fileUrl = Bundle.main.url(forResource: "Comments", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return data
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
