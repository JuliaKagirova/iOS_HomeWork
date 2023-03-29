//
//  Source.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 29.03.2023.
//

import UIKit

struct Posts {
    var author: String
    var image = UIImage()
    var description: String
    var likes: Int
    var view: Int
}
struct Description {
    static let summerDescript = "I like summer vibe \nlong description"
    static let winterDescript = "I like winter vibe"
    static let springDescript = "I like spring vibe"
    static let automneDescript = "I like automne vibe"
}
struct Source {
    static func makePost() -> [Posts] {
        [.init(author: "Summer  \nlong name", image: UIImage(named: "Summer")!, description: Description.summerDescript, likes: 123, view: 234),
         .init(author: "Winter", image: UIImage(named: "Winter")!, description: Description.winterDescript, likes: 234, view: 345),
         .init(author: "Spring", image: UIImage(named: "Spring")!, description: Description.springDescript, likes: 345, view: 456),
         .init(author: "Automne", image: UIImage(named: "Automne")!, description: Description.automneDescript, likes: 456, view: 567)
        ]
    }
}
