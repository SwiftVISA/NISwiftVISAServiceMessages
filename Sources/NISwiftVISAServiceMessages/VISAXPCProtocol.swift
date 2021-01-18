//
//  File.swift
//  
//
//  Created by Connor Barnes on 1/1/21.
//

import Foundation
import CVISATypes

/// A protocol that is used for XPC communication between NISwiftVISA and NISwiftVISAService. Each method corresponds to a function that is called by NISwiftVISAService in the C NI VISA framework.
@objc public protocol VISAXPCProtocol {
	/// Closes the given session.
	/// - Parameters:
	///   - vi: The session to close.
	///   - reply: The status of the call.
	func close(
		vi: ViSession,
		withReply reply: @escaping (ViStatus) -> Void
	)
	/// Opens the instrument with the given VISA resource name.
	/// - Parameters:
	///   - session: The session of the default resouce manager.
	///   - resourceName: The name of the VISA resource.
	///   - mode: The mode to open the instrument in.
	///   - timeout: The maximum number of seconds to allow for connecting to the instrument.
	///   - reply: The status of the call, and the session of the newly connected instrument.
	func open(
		session: ViSession,
		resourceName: String,
		mode: ViAccessMode,
		timeout: ViUInt32,
		withReply reply: @escaping (ViStatus, ViSession) -> Void
	)
	/// Opens the default resource manager.
	/// - Parameter reply: The status of the call, and the session of the resource manager.
	func openDefaultRM(
		withReply reply: @escaping (ViStatus, ViSession) -> Void
	)
	/// Reads a message from an instrument.
	/// - Parameters:
	///   - vi: The session of the instrument to read from.
	///   - count: The number of bytes to read.
	///   - reply: The status of the call, the message data, and the number of bytes read.
	func read(
		vi: ViSession,
		count: ViUInt32,
		withReply reply: @escaping (ViStatus, Data, ViUInt32) -> Void
	)
	/// Writes a message to an instrument.
	/// - Parameters:
	///   - vi: The session of the instrument to write to.
	///   - data: The data to write to the instrument.
	///   - reply: The status of the call, and the number of bytes written.
	func write(
		vi: ViSession,
		data: Data,
		withReply reply: @escaping (ViStatus, ViUInt32) -> Void
	)
}
