//
//  ViewController.swift
//  AprilTest1
//
//  Created by INDRESH on 20/11/17.
//  Copyright © 2017 INDRESH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivitiesTableViewCell", for: indexPath) as! ActivitiesTableViewCell

        cell.layer.borderWidth = 10
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.clipsToBounds = true
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 200
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // seting the inital state
        cell.alpha = 0
        let transform = CATransform3DScale(CATransform3DIdentity, -100, 30, 0)
        cell.layer.transform = transform
        
        // Do animation
        UIView.animate(withDuration: 1) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }

}

