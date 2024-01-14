//
//  CommentViewModel.swift
//  ApiCallSwiftUI
//
//  Created by Nilesh on 04/01/22.
//

import Foundation

class CommentViewModel: ObservableObject {
    private let commentViewService: CommentViewServiceDelegate
    
    let data1: String? = ""
    
    init(commentViewService: CommentViewServiceDelegate = CommentViewService()) {
        self.commentViewService = commentViewService
    }
    
    @Published var comments = [CommentModel]()
    
    func fetchComments() {
        commentViewService.getComments { result in
            let data = "Jones"
            let data2: String = self.data1!
            
            print("========= > \(data) \(data2)")
            switch result {
            case .success(let comments):
                print("Fetched new comments")
                self.comments = comments
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

//"\("
// "copined"
