//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import Foundation

public struct MessageType: Codable, Hashable {
	public let name: String
	
	init(named name: String) {
		self.name = name
	}
}

extension MessageType {
	static var messageMap: [MessageType: Message.Type] = [
		.viOpen : ViOpenMessage.self,
		.viClose : ViCloseMessage.self,
		.viOpenDefaultRM : ViOpenDefaultRMMessage.self
	]
}
