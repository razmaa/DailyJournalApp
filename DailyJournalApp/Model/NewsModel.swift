//
//  NewsModel.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import Foundation

struct News: Identifiable {
    var id = UUID()
    var title: String
    var body: String
    var date: Date
}
