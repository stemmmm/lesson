//
//  Lesson.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import Foundation

struct Lesson: Identifiable, Decodable {
    var id: Int
    var title: String
    var url: String
}
