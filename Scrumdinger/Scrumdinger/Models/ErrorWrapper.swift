//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Preetham Ananthkumar on 27/06/2023.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
