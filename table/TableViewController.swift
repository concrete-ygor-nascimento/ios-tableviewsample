//
//  TableViewController.swift
//  table
//
//  Created by ygor.de.a.nascimento on 10/05/18.
//  Copyright © 2018 ygor.de.a.nascimento. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let texts = ["a", "b", "c", "d", "e", "fg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        let text = texts[indexPath.row]
        
        let label  = cell.viewWithTag(1000) as! UILabel
        label.text = text
        label.sizeToFit()
        
        return cell
    }


}

