//
//  Source.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 29.03.2023.

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
        [
            .init(author: "Summer  \nlong name", image: UIImage(named: "Summer")!, description: Description.summerDescript, likes: 123, view: 234),
            .init(author: "Winter", image: UIImage(named: "Winter")!, description: Description.winterDescript, likes: 234, view: 345),
            .init(author: "Spring", image: UIImage(named: "Spring")!, description: Description.springDescript, likes: 345, view: 456),
            .init(author: "Automne", image: UIImage(named: "Automne")!, description: Description.automneDescript, likes: 456, view: 567)
        ]
    }
}

struct Photo {
    var id: Int
    var image: UIImage
    var imageName: String
}

struct Source2 {
    static func allPhotos() -> [Photo] {
        [
            .init(id: 1, image: UIImage(named: "1")!, imageName: "1"),
            .init(id: 2, image: UIImage(named: "2")!, imageName: "2"),
            .init(id: 3, image: UIImage(named: "3")!, imageName: "3"),
            .init(id: 4, image: UIImage(named: "4")!, imageName: "4"),
            .init(id: 5, image: UIImage(named: "5")!, imageName: "5"),
            .init(id: 6, image: UIImage(named: "6")!, imageName: "6"),
            .init(id: 7, image: UIImage(named: "7")!, imageName: "7"),
            .init(id: 8, image: UIImage(named: "8")!, imageName: "8"),
            .init(id: 9, image: UIImage(named: "9")!, imageName: "9"),
            .init(id: 10, image: UIImage(named: "10")!, imageName: "10"),
            .init(id: 11, image: UIImage(named: "11")!, imageName: "11"),
            .init(id: 12, image: UIImage(named: "12")!, imageName: "12"),
            .init(id: 13, image: UIImage(named: "13")!, imageName: "13"),
            .init(id: 14, image: UIImage(named: "14")!, imageName: "14"),
            .init(id: 15, image: UIImage(named: "15")!, imageName: "15"),
            .init(id: 16, image: UIImage(named: "16")!, imageName: "16"),
            .init(id: 17, image: UIImage(named: "17")!, imageName: "17"),
            .init(id: 18, image: UIImage(named: "18")!, imageName: "18"),
            .init(id: 19, image: UIImage(named: "19")!, imageName: "19"),
            .init(id: 20, image: UIImage(named: "20")!, imageName: "20"),
        ]
    }
    static func firstFourPhotos() -> [Photo] {
        [
            .init(id: 1, image: UIImage(named: "1")!, imageName: "1"),
            .init(id: 2, image: UIImage(named: "2")!, imageName: "2"),
            .init(id: 3, image: UIImage(named: "3")!, imageName: "3"),
            .init(id: 4, image: UIImage(named: "4")!, imageName: "4")
        ]
    }
}
