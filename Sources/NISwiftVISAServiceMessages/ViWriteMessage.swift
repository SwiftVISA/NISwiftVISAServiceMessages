//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/30/20.
//

import CVISA

public struct ViWriteMessage: Codable {
	public var vi: ViSession
	public var buffer: [ViByte]
	public var count: ViUInt32
	public var returnCount: ViUInt32
	
	public init(vi: ViSession, buffer: [ViByte], count: ViUInt32, returnCount: ViUInt32) {
		self.vi = vi
		self.buffer = buffer
		self.count = count
		self.returnCount = returnCount
	}
}
