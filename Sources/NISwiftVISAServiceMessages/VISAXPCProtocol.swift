//
//  File.swift
//  
//
//  Created by Connor Barnes on 1/1/21.
//

import Foundation
import CVISA

@objc protocol VISAXPCProtocol {
	func close(
		vi: ViSession,
		withReply reply: @escaping (ViStatus) -> Void
	)
	
	func open(
		session: ViSession,
		resourceName: String,
		mode: ViAccessMode,
		timeout: ViUInt32,
		withReply reply: @escaping (ViStatus, ViSession) -> Void
	)
	
	func openDefaultRM(
		vi: ViSession,
		withReply reply: @escaping (ViStatus) -> Void
	)
	
	func read(
		vi: ViSession,
		count: ViUInt32,
		withReply reply: @escaping (ViStatus, Data, ViUInt32) -> Void
	)
	
	func write(
		vi: ViSession,
		data: Data,
		withReply reply: @escaping (ViStatus, ViUInt32) -> Void
	)
}
