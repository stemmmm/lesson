//
//  LessonListView.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import SwiftUI

struct LessonListView: View {
    @EnvironmentObject var lessonData: LessonData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(lessonData.lessons) { lesson in
                    NavigationLink {
                        LessonDetailView(lesson: lesson)
                    } label: {
                        Text(lesson.title)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("All Videos")
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonListView()
            .environmentObject(LessonData())
    }
}
