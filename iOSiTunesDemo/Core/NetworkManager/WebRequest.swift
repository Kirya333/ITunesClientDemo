//
//  WebRequest.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import Foundation
import Alamofire

struct WebRequest {
    var method: HTTPMethod
    var url: String
    var parameters: Parameters
}

extension WebRequest: CustomStringConvertible {
    
    var description: String {
        return "WebRequest: method \(method.rawValue), url: \(url), parameters: \(parameters)"
    }
}
