//
//  LessonData.swift
//  Lesson
//
//  Created by 정호윤 on 2022/05/14.
//

import Foundation

class LessonData: ObservableObject {
    @Published var lessons: [Lesson] = []
    
    init() {
        // Parse the remote json data
        getRemoteData()
    }
    
    func getRemoteData() {
        // String path
        let urlPath = "https://codewithchris.github.io/Module5Challenge/Data.json"
        
        // Create a url object
        let url = URL(string: urlPath)
        
        // Can't create url if url is nil
        guard url != nil else { return }
        
        // Create a url request object
        let request = URLRequest(url: url!)
        
        // Get the session and kick off the task
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            // Check if there's an error
            guard error == nil else { return }
            
            do {
                // Create json decoder
                let decoder = JSONDecoder()
                
                // Decode
                let lessons = try decoder.decode([Lesson].self, from: data!)
                
                DispatchQueue.main.async {
                    self.lessons += lessons
                }
            } catch {
                // Couldn't parse json
                print(error)
            }
        }
        // Kick off data task
        dataTask.resume()
    }
}
