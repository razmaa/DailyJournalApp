//
//  DailyNewsScene.swift
//  DailyJournalApp
//
//  Created by nika razmadze on 20.12.23.
//

import SwiftUI

struct DailyNewsScene: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            EntryFormView()
                .frame(height: 380)
            
            Text("News")
                .bold()
            
            Spacer()
            
            NewsListView()

            Spacer()
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    DailyNewsScene()
}
