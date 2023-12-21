@testable import ApiCallSwiftUI
import XCTest

class CommentViewModelTests: XCTestCase {
    func testComments() {
        let sut = CommentViewModel(commentViewService: MockCommentViewService())
        sut.fetchComments()
        print("========= >11 \(sut.comments)")
        XCTAssert(sut.comments.count == 500)
    }
}
