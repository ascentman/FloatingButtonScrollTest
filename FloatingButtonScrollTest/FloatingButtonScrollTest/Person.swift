//
//  Person.swift
//  FloatingButtonScrollTest
//
//  Created by user on 6/6/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

final class Person {

    let name: String
    let surname: String
    let image: UIImage

    init(name: String, surname: String, image: UIImage = UIImage(named: "default-person") ?? UIImage()) {
        self.name = name
        self.surname = surname
        self.image = image
    }
}
