//
//  Tip.swift
//  Trekr
//
//  Created by Aditya Ghorpade on 01/03/23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
