//
//  WebsitesViewController.swift
//  Easy Browser
//
//  Created by Artyom Nesterenko on 20/3/20.
//  Copyright © 2020 artnest. All rights reserved.
//

import UIKit

class WebsitesViewController: UITableViewController {
    private let websites = ["apple.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Easy Browser"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let browserViewController = BrowserViewController(website: websites[indexPath.row])
        navigationController!.pushViewController(browserViewController, animated: true)
    }
}
