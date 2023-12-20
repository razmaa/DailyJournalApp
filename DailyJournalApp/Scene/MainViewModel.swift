//
//  MainViewModel.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import Foundation


class MainViewModel: ObservableObject {
    @Published var allNews: [News] = [
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),
        News(title: "woooow", body: "wooooooooooooooooooooooow", date: Date()),

    ]
    
    func saveNews(news: News) {
        if news.title != "" && news.body != "" {
            allNews.insert(news, at: 0)
        }
    }
    
    func deleteNews(offsets: IndexSet) {
        allNews.remove(atOffsets: offsets)
    }
    
    func moveNews(from source: IndexSet, to destination: Int) {
        allNews.move(fromOffsets: source, toOffset: destination)
    }
}
