//
//  ViewController.swift
//  tableData
//
//  Created by Ishan Srivastava on 26/10/17.
//  Copyright © 2017 Ishan Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return  30
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return 3
        }
        else if section == 1
        {
            return 4
        }
        return 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0
        {
            return 80
        }
        return 90
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell")
            cell?.imageView?.image=UIImage(named: "wonderwoman-1280-9amembargo-1488818748850_1280w.jpg")
            cell?.textLabel?.text="Wonder Women"
            return cell!
        }
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell")
        
        let imageView = cell?.contentView.viewWithTag(12) as! UIImageView
        imageView.image=UIImage(named: "wonderwoman-1280-9amembargo-1488818748850_1280w.jpg")
        return cell!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

