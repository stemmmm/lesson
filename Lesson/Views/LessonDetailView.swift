//
//  LessonDetailView.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import SwiftUI
import AVKit

struct LessonDetailView: View {
    var lesson: Lesson
    let aspectRatio: CGFloat = 478 / 849
    
    var body: some View {
        let url = URL(string: lesson.url)
        
        VStack {
            Text(lesson.title)
                .bold()
                .font(.title)
            
            // Video
            if let videoURL = url {
                GeometryReader { geometry in
                    VideoPlayer(player: AVPlayer(url: videoURL))
                        .frame(height: geometry.size.width * aspectRatio)
                }
            } else {
                Text("There is something wrong with our video...")
            }
        }
        .padding()
    }
}
