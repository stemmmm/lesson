//
//  LessonApp.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import SwiftUI

@main
struct LessonApp: App {
    @StateObject var lessonData = LessonData()
    
    var body: some Scene {
        WindowGroup {
            LessonListView()
                .environmentObject(lessonData)
        }
    }
}
