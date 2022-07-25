//
//  User.swift
//  TestLogin
//
//  Created by KVip on 26/07/2022.
//

import Foundation
struct User: Decodable {
    var result: Int?
    var code: Int?
    var message : String?
//    var data: [String: Any]?

    
    enum CodingKeys: String, CodingKey
    {
        case code
        case message
//        case data = "data"
        case result
        
    }
}
