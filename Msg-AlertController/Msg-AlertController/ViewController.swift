//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by Harold on 2018. 7. 17..
//  Copyright © 2018년 Harold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    

    @IBAction func alert(_ sender: Any) {
        //컨트롤러 초기화
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        
        //취소 버튼
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        //확인 버튼
        let ok = UIAlertAction(title: "확인", style: .default)
        
        //실행 버튼
        let exec = UIAlertAction(title: "실행", style: .destructive)
        
        //중지 버튼
        let stop = UIAlertAction(title: "중지", style: .default)
        
        //버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        //메시지 창 실행
        self.present(alert, animated: false)
    }
    
}

