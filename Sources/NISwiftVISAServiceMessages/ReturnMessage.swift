//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ReturnMessage: Codable {
	public var message: Message
	public var status: ViStatus
}

extension Message {
	public func returnMessage(withStatus status: ViStatus) -> ReturnMessage {
		return ReturnMessage(message: self, status: status)
	}
}
