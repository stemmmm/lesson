//
//  LessonDetailView.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import SwiftUI

struct LessonDetailView: View {
    var lesson: Lesson
    
    var body: some View {
        VStack {
            Text(lesson.title)
                .bold()
                .font(.title)
            
            // Video
        }
    }
}
