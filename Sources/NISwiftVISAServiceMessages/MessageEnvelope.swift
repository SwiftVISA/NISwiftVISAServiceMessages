//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct MessageEnvelope<M: Message>: Codable {
	public var type: String
	public var message: M
}

public struct ReturnEnvelope<M: Message>: Codable {
	public var message: M
	public var status: ViStatus
}
