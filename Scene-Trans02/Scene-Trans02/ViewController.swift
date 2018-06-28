//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by HaroldJung on 2018. 6. 28..
//  Copyright © 2018년 HaroldJung. All rights reserved.
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


    @IBAction func moveByNavy(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        self.navigationController?.pushViewController(uvc, animated: true)
        
    }
}

