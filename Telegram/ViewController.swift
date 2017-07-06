//
//  ViewController.swift
//  Telegram
//
//  Created by Michelline Tran on 6/29/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var wrapper = Wrapper()

    override func viewDidLoad() {
        super.viewDidLoad()

        wrapper.maxCharacters = 11
        wrapper.text = ["This is a cat.", "Meow."]

        self.tableView.separatorStyle = .none
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wrapper.wrapText().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = wrapper.wrapText()[indexPath.row]
        return cell
    }
}
