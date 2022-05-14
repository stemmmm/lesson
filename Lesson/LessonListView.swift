//
//  LessonListView.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import SwiftUI

struct LessonListView: View {
    @EnvironmentObject var lesson: LessonData
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(lesson.lessons) { lesson in
                    Text(lesson.title)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonListView()
            .environmentObject(LessonData())
    }
}
