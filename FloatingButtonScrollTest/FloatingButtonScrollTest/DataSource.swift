//
//  DataSource.swift
//  FloatingButtonScrollTest
//
//  Created by user on 6/6/19.
//  Copyright © 2019 user. All rights reserved.
//

import Foundation

final class DataSource {

    private let robert = Person(name: "Robert", surname: "Baratheon")
    private let jaime = Person(name: "Jaime", surname: "Lannister")
    private let catelyn = Person(name: "Catelyn", surname: "Stark")
    private let cersei = Person(name: "Cersei", surname: "Lannister")
    private let jorah = Person(name: "Jorah", surname: "Mormont")
    private let jon = Person(name: "Jon", surname: "Snow")
    private let sansa = Person(name: "Sansa", surname: "Stark")
    private let arya = Person(name: "Arya", surname: "Stark")
    private let theon = Person(name: "Theon", surname: "Greyjoy")
    private let joffrey = Person(name: "Joffrey", surname: "Baratheon")
    private let khal = Person(name: "Khal", surname: "Drogo")
    private let bronn = Person(name: "Bronn", surname: "")
    private let roose = Person(name: "Roose", surname: "Bolton")
    private let tywin = Person(name: "Tywin", surname: "Lannister")
    private let stannis = Person(name: "Stannis", surname: "Baratheon")
    private let daenerys = Person(name: "Daenerys", surname: "Targaryen")

    var gameOfThronesCharacters: [Person] = []

    init() {
        gameOfThronesCharacters = [
            robert,
            jaime,
            catelyn,
            cersei,
            jorah,
            jon,
            sansa,
            arya,
            theon,
            joffrey,
            khal,
            bronn,
            roose,
            tywin,
            stannis,
            daenerys
        ]
    }
}
