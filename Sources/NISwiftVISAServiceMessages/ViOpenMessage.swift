//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ViOpenMessage: Codable {
	public var session: ViSession
	public var name: String!
	public var mode: ViAccessMode
	public var timeout: ViUInt32
	public var vi: ViSession!
}
