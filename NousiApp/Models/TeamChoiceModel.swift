//
//  TeamChoiceModel.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import Foundation

struct TeamChoice: Decodable {
    
    let choice_identifier: String
    let choice_fullname: String
    let choice_explanation: String
    
    let id: Int
    
}