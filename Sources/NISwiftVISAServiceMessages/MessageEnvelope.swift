//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import Foundation

public struct MessageEnvelope<M: Message>: Codable {
	public var type: String
	public var message: M
}
