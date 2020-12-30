//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ViCloseMessage: Codable {
	public var vi: ViObject
}

extension ViCloseMessage: Message {
	public static let type = MessageType.viClose
}

extension MessageType {
	static let viClose = Self(named: "viClose")
}
