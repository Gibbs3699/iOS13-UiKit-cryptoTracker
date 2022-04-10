//
//  Models.swift
//  iOS13-UiKit-cryptoTracker
//
//  Created by TheGIZzz on 10/4/2565 BE.
//

import Foundation

struct Crypto: Codable {
    let asset_id: String
    let name: String
    let volume_1hrs_usd: Float
}

