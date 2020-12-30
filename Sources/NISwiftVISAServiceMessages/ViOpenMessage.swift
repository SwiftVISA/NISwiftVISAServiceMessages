//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

struct ViOpenMessage: Codable {
	var session: ViSession
	var name: String!
	var mode: ViAccessMode
	var timeout: ViUInt32
	var vi: ViSession!
}
