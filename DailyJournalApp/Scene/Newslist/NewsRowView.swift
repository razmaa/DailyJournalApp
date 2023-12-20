//
//  NewsRowView.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import SwiftUI

struct NewsRowView: View {
    var news: News
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(news.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(news.body)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text("\(news.date, formatter: DateFormatter.newsDateFormatter)")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()

    }
}

#Preview {
    NewsRowView(news: News(title: "abcd", body: "efg", date: Date()))
}
