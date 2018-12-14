//
//  ViewController.swift
//  iOS-PasteboardSniffer
//
//  Created by Raffaele Sabato on 14/12/2018.
//  Copyright © 2018 Raffaele Sabato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tablesView:UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(UIPasteboard.general.hasStrings) {
            return UIPasteboard.general.strings!.count
       }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel!.text = UIPasteboard.general.string
        cell.textLabel!.textAlignment = .center
        cell.textLabel?.textColor = UIColor.red
        //print("[*] Reading From Pasteboard: " + UIPasteboard.general.strings![indexPath.row])
        return cell
    }
    
    
    
    
    
    
}

