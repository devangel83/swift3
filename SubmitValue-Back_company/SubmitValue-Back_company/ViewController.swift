//
//  ViewController.swift
//  SubmitValue-Back_company
//
//  Created by Harold on 2018. 7. 16..
//  Copyright © 2018년 Harold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    

    var paramEmail : String?
    var paramUpdate : Bool?
    var paramInterval : Double?
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        
        if let update = paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신안함"
        }
        
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
}

