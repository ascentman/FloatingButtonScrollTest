//
//  PersonTableViewCell.swift
//  FloatingButtonScrollTest
//
//  Created by user on 6/6/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

final class PersonTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var personImageView: UIImageView!

    // MARK - Lifecycle

    override func prepareForReuse() {
        nameLabel.text = ""
        personImageView.image = UIImage()
    }

    func setCell(person: Person) {
        nameLabel.text = person.name + " " + person.surname
        imageView?.image = person.image
    }
}
