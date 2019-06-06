//
//  TableViewController.swift
//  FloatingButtonScrollTest
//
//  Created by user on 6/6/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

final class TableViewController: UITableViewController {

    private var items = DataSource()
    private var floatingButton: UIButton?

    private enum Constants {
        static let trailingValue: CGFloat = 15.0
        static let leadingValue: CGFloat = 15.0
        static let buttonHeight: CGFloat = 75.0
        static let buttonWidth: CGFloat = 75.0

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        createFloatingButton()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.gameOfThronesCharacters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PersonTableViewCell
        cell?.setCell(person: items.gameOfThronesCharacters[indexPath.row])
        return cell ?? UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let lastCellRowIndex = tableView.indexPathsForVisibleRows?.last?.row {
            if items.gameOfThronesCharacters.count - 1 >= lastCellRowIndex + 1 {
                floatingButton?.isHidden = false
            } else {
                floatingButton?.isHidden = true
            }
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    // MARK: - Private

    private func createFloatingButton() {
        floatingButton = UIButton(type: .custom)
        floatingButton?.backgroundColor = .clear
        floatingButton?.translatesAutoresizingMaskIntoConstraints = false
        constrainFloatingButtonToWindow()
        floatingButton?.setImage(UIImage(named: "floatButton"), for: .normal)
        floatingButton?.addTarget(self, action: #selector(doThisWhenButtonIsTapped(_:)), for: .touchUpInside)
    }

    private func constrainFloatingButtonToWindow() {
        DispatchQueue.main.async {
            guard let keyWindow = UIApplication.shared.keyWindow,
                let floatingButton = self.floatingButton else { return }
            keyWindow.addSubview(floatingButton)
            keyWindow.trailingAnchor.constraint(equalTo: floatingButton.trailingAnchor,
                                                constant: Constants.trailingValue).isActive = true
            keyWindow.bottomAnchor.constraint(equalTo: floatingButton.bottomAnchor,
                                              constant: Constants.leadingValue).isActive = true
            floatingButton.widthAnchor.constraint(equalToConstant:
                Constants.buttonWidth).isActive = true
            floatingButton.heightAnchor.constraint(equalToConstant:
                Constants.buttonHeight).isActive = true
        }
    }

    @IBAction private func doThisWhenButtonIsTapped(_ sender: Any) {
        let lastRow = items.gameOfThronesCharacters.count - 1
        tableView.scrollToRow(at: IndexPath(row: lastRow, section: 0), at: .bottom, animated: true)
    }
}

