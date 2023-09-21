//
//  Restaurant.swift
//  MyPlaces
//
//  Created by Matvei Khlestov on 21.09.2023.
//

struct Restaurant {
    let name: String
    
    static func getRestaurant() -> [Restaurant] {
        [
            Restaurant(name: "Burger Heroes"),
            Restaurant(name: "Kitchen"),
            Restaurant(name: "Bonsai"),
            Restaurant(name: "Дастархан"),
            Restaurant(name: "Индокитай"),
            Restaurant(name: "X.O"),
            Restaurant(name: "Балкан Гриль"),
            Restaurant(name: "Sherlock Holmes"),
            Restaurant(name: "Speak Easy"),
            Restaurant(name: "Morris Pub"),
            Restaurant(name: "Вкусные истории"),
            Restaurant(name: "Классик"),
            Restaurant(name: "Love&Life"),
            Restaurant(name: "Шок"),
            Restaurant(name: "Бочка")
        ]
    }
}

