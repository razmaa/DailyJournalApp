//
//  DateFormatter.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import Foundation

extension DateFormatter {
    static let newsDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
}
