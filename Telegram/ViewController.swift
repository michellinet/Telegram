//
//  ViewController.swift
//  Telegram
//
//  Created by Michelline Tran on 6/29/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var wrapper : Wrapper

    init(wrapper: Wrapper) {
        self.wrapper = wrapper
        super.init(style: .plain)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorStyle = .none
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wrapper.wrapText().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = wrapper.wrapText()[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
}
