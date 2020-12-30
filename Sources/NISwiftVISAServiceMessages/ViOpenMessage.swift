//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ViOpenMessage: Codable {
	public var session: ViSession
	public var resourceName: String
	public var mode: ViAccessMode
	public var timeout: ViUInt32
	public var vi: ViSession
	
	public init(session: ViSession, resourceName: String, mode: ViAccessMode, timeout: ViUInt32, vi: ViSession) {
		self.session = session
		self.resourceName = resourceName
		self.mode = mode
		self.timeout = timeout
		self.vi = vi
	}
}
