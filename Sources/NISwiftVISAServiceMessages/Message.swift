//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import Foundation
import CVISA

public enum Message: Codable {
	case viOpenMessage(ViOpenMessage)
	case viCloseMessage(ViCloseMessage)
	case viOpenDefaultRMMessage(ViOpenDefaultRMMessage)
	
	public enum CodingKeys: CodingKey {
		case viOpenMessage
		case viCloseMessage
		case viOpenDefaultRMMessage
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let key = container.allKeys.first
		
		switch key {
		case .viOpenMessage:
			let message = try container.decode(
				ViOpenMessage.self,
				forKey: .viOpenMessage
			)
			
			self = .viOpenMessage(message)
		case .viCloseMessage:
			let message = try container.decode(
				ViCloseMessage.self,
				forKey: .viCloseMessage)
			
			self = .viCloseMessage(message)
		case .viOpenDefaultRMMessage:
			let message = try container.decode(
				ViOpenDefaultRMMessage.self,
				forKey: .viOpenDefaultRMMessage)
			
			self = .viOpenDefaultRMMessage(message)
		default:
			throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unable to decode"))
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		switch self {
		case .viOpenMessage(let message):
			try container.encode(message, forKey: .viOpenMessage)
		case .viCloseMessage(let message):
			try container.encode(message, forKey: .viCloseMessage)
		case .viOpenDefaultRMMessage(let message):
			try container.encode(message, forKey: .viOpenDefaultRMMessage)
		}
	}
}
