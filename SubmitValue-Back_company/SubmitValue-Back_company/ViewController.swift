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
    

//    var paramEmail : String?
//    var paramUpdate : Bool?
//    var paramInterval : Double?
    
    override func viewWillAppear(_ animated: Bool) {
/*
        if let email = paramEmail {
            resultEmail.text = email
        }
        
        if let update = paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신안함"
        }
        
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
 */

        // 일시적 값 저장
        //AppDelegate 객체의 인스턴스를 가져온다.
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
            resultEmail.text = email
        }
        
        if let update = ad?.paramUpdate {
            resultUpdate.text = update == true ? "자동갱신":"자동갱신안함"
        }
        
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
 
        /* 반 영구적 값 저장
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신":"자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
        */
    }
}

