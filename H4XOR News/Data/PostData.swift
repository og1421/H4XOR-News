//
//  PostData.swift
//  H4XOR News
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import Foundation

struct PostData: Identifiable, Codable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
    
}


struct Results: Codable {
    let hits: [PostData]
}
