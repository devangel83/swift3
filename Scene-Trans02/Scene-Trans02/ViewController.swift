//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by Harold on 2018. 6. 28..
//  Copyright © 2018년 Harold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func moveByNavy(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        self.navigationController?.pushViewController(uvc, animated: true)
        
    }
    
    
    @IBAction func movePresent(_ sender: Any) {
        //두번째 뷰 컨트롤러 인스턴스를 가져온다.
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        //화면을 전환한다.
        self.present(uvc, animated: true)
    }
    
    
    
    
}

