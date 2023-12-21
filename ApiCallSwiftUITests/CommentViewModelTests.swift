@testable import ApiCallSwiftUI
import XCTest

class CommentViewModelTests: XCTestCase {
    func testComments() {
        guard let fileUrl = Bundle.main.url(forResource: "issuer", withExtension: "json") else {
            return
        }
        print("fileUrl", fileUrl)
//        let sut = CommentViewModel(commentViewService: MockCommentViewService())
//        sut.fetchComments()
//        print("========= >11 \(sut.comments)")
//        XCTAssert(sut.comments.count == 500)
    }
}
