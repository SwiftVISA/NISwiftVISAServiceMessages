//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import Foundation
import CVISA

public enum Message: Codable {
	case viOpen(ViOpenMessage)
	case viClose(ViCloseMessage)
	case viOpenDefaultRM(ViOpenDefaultRMMessage)
	
	public enum CodingKeys: CodingKey {
		case viOpen
		case viClose
		case viOpenDefaultRM
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let key = container.allKeys.first
		
		switch key {
		case .viOpen:
			let message = try container.decode(
				ViOpenMessage.self,
				forKey: .viOpen
			)
			
			self = .viOpen(message)
		case .viClose:
			let message = try container.decode(
				ViCloseMessage.self,
				forKey: .viClose)
			
			self = .viClose(message)
		case .viOpenDefaultRM:
			let message = try container.decode(
				ViOpenDefaultRMMessage.self,
				forKey: .viOpenDefaultRM)
			
			self = .viOpenDefaultRM(message)
		default:
			throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unable to decode"))
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		switch self {
		case .viOpen(let message):
			try container.encode(message, forKey: .viOpen)
		case .viClose(let message):
			try container.encode(message, forKey: .viClose)
		case .viOpenDefaultRM(let message):
			try container.encode(message, forKey: .viOpenDefaultRM)
		}
	}
}
