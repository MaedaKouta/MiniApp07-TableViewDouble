//
//  ViewController.swift
//  MiniApp07-TableViewDouble
//
//  Created by 前田航汰 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var tableView3: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1 {
            return 10
        } else if tableView == tableView2 {
            return 20
        } else {
            return 30
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")!
    
        if tableView == tableView1 {
            cell.textLabel?.text = "２の倍数列挙：\((indexPath.row + 1) * 2)"
        } else if tableView == tableView2 {
            cell.textLabel?.text = "３の倍数列挙：\((indexPath.row + 1) * 3)"
        } else {
            cell.textLabel?.text = "４の倍数列挙：\((indexPath.row + 1) * 4)"
        }

        return cell
    }

}

