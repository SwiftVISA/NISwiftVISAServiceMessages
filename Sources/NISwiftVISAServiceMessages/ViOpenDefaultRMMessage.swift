//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ViOpenDefaultRMMessage: Codable {
	public var vi: ViSession
	
	public init(vi: ViSession) {
		self.vi = vi
	}
}
