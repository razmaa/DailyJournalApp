//
//  EntryFormView.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import SwiftUI

struct EntryFormView: View {
    @EnvironmentObject var viewModel: MainViewModel
    @State private var title = ""
    @State private var description = ""
    @State private var date = Date()
    
    var body: some View {
        Form {
            Section(header: Text("News Entry")) {
                TextField("Title", text: $title)
                
                TextEditor(text: $description)
                    .frame(height: 200)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                
                DatePicker(selection: $date, displayedComponents: .date) {
                    Button(action: {
                        viewModel.saveNews(news: News(title: title, body: description, date: date))
                        title = ""
                        description = ""
                    }) {
                        Text("Save News")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    EntryFormView()
}
