//
//  CoreDocumentProperties.swift
//  CoreXLSX
//
//  Created by James Sherlock on 26/03/2025.
//

import Foundation

public struct CoreDocumentProperties: Codable, Equatable {
  let creator: String?
  let createdDate: String?
  let lastModifiedBy: String?
  let lastModified: String?
  
  enum CodingKeys: String, CodingKey {
    case creator = "creator"
    case createdDate = "created"
    case lastModifiedBy = "lastModifiedBy"
    case lastModified = "modified"
  }
}
