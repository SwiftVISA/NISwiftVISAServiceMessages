//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import CVISA

public struct ViOpenDefaultRMMessage: Codable {
	public var vi: ViObject
}

extension ViOpenDefaultRMMessage: Message {
	public static let type = MessageType.viOpenDefaultRM
}

extension MessageType {
	static let viOpenDefaultRM = Self(named: "viOpenDefaultRM")
}
