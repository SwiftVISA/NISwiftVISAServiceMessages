//
//  Async.swift
//  
//
//  Created by Connor Barnes on 7/8/21.
//

import Foundation
import CVISATypes

extension VISAXPCProtocol {
  /// Closes the given session.
  /// - Parameters:
  ///   - vi: The session to close.
  ///   - reply: The status of the call.
  func close(
    vi: ViSession
  ) async -> ViStatus {
    await withCheckedContinuation { continuation in
      close(vi: vi) { status in
        continuation.resume(returning: status)
      }
    }
  }
  
  /// Opens the instrument with the given VISA resource name.
  /// - Parameters:
  ///   - session: The session of the default resouce manager.
  ///   - resourceName: The name of the VISA resource.
  ///   - mode: The mode to open the instrument in.
  ///   - timeout: The maximum number of seconds to allow for connecting to the instrument.
  ///   - reply: The status of the call, and the session of the newly connected instrument.
  func `open`(
    session: ViSession,
    resourceName: String,
    mode: ViAccessMode,
    timeout: ViUInt32
  ) async -> (status: ViStatus, session: ViSession) {
    await withCheckedContinuation { continuation in
      `open`(session: session, resourceName: resourceName, mode: mode, timeout: timeout) { status, session in
        continuation.resume(returning: (status, session))
      }
    }
  }
  
  /// Opens the default resource manager.
  /// - Parameter reply: The status of the call, and the session of the resource manager.
  func openDefaultRM() async -> (status: ViStatus, session: ViSession) {
    await withCheckedContinuation { continuation in
      openDefaultRM { status, session in
        continuation.resume(returning: (status, session))
      }
    }
  }
  
  /// Reads a message from an instrument.
  /// - Parameters:
  ///   - vi: The session of the instrument to read from.
  ///   - count: The number of bytes to read.
  ///   - reply: The status of the call, the message data, and the number of bytes read.
  func read(
    vi: ViSession,
    count: ViUInt32
  ) async -> (status: ViStatus, data: Data, bytesRead: ViUInt32) {
    await withCheckedContinuation { continuation in
      read(vi: vi, count: count) { status, data, bytesRead in
        continuation.resume(returning: (status, data, bytesRead))
      }
    }
  }
  
  /// Writes a message to an instrument.
  /// - Parameters:
  ///   - vi: The session of the instrument to write to.
  ///   - data: The data to write to the instrument.
  ///   - reply: The status of the call, and the number of bytes written.
  func write(
    vi: ViSession,
    data: Data
  ) async -> (status: ViStatus, bytesWritten: ViUInt32) {
    await withCheckedContinuation { continuation in
      write(vi: vi, data: data) { status, bytesWritten in
        continuation.resume(returning: (status, bytesWritten))
      }
    }
  }
}
