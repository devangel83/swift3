//
//  FormViewController.swift
//  SubmitValue-Back_company
//
//  Created by Harold on 2018. 7. 16..
//  Copyright © 2018년 Harold. All rights reserved.
//

import UIKit

class FormViewController : UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
     /*
        let preVC = self.presentingViewController
        
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
    */
        //AppDelegate 객체의 인스턴스를 가져온다.
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        //값을 저장한다.
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    
    
    
}
