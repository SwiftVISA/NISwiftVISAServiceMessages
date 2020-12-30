//
//  File.swift
//  
//
//  Created by Connor Barnes on 12/29/20.
//

import Foundation

public protocol Message: Codable {
	static var name: String { get }
}
