//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Frank Solleveld on 28/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: DeviceType
}

enum DeviceType: Character {
    case imac = "🖥", macbook = "💻", iphone = "📱", watch = "⌚️"
    
    var definition: String {
        switch self {
        case .imac:
            return "Super sharp you are. Nice and flat around the edges but huge in the rear 🍑."
            
        case .iphone:
            return "You change little over time, shame."
            
        case .macbook:
            return "Please get your keyboard straight, bro."
            
        case .watch:
            return "You are really resistant. Nice to see that even though you aren't active, you show a little token of "
        }
    }
    
    
}
