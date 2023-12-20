//
//  NewsListView.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import SwiftUI

struct NewsListView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    var body: some View {
        if viewModel.allNews.isEmpty {
            Text("ვა აქ არაფერია")
                .bold()
                .padding()
        } else {
            List {
                ForEach(viewModel.allNews) { news in
                    NewsRowView(news: news)
                }
                .onMove(perform: { indices, newOffset in
                    viewModel.moveNews(from: indices, to: newOffset)
                })
                .onDelete(perform: { indexSet in
                    viewModel.deleteNews(offsets: indexSet)
                })
            }
            .ignoresSafeArea()
            .listStyle(.plain)
        }
    }
}

#Preview {
    NewsListView()
        .environmentObject(MainViewModel())
}
