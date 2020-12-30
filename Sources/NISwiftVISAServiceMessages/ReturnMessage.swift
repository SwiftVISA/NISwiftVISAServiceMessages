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
