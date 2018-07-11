//
//  ViewController.swift
//  SubmitValue
//
//  Created by HaroldJung on 2018. 7. 6..
//  Copyright © 2018년 HaroldJung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //이메일 주소를 입력받는 텍스트필드
    @IBOutlet weak var email: UITextField!
    
    //자동 갱신 여부를 설정하는 스위치
    @IBOutlet weak var isUpdate: UISwitch!
    
    
    //갱신 주기를 설정하는 스테퍼
    @IBOutlet weak var interval: UIStepper!
    
    //자동갱신 여부를 표시하는 레이블
    @IBOutlet weak var isUpdateText: UILabel!
 
    //갱신주기를 텍스트로 표시하는 레이블
    @IBOutlet weak var intervalText: UILabel!
    
    //자동 갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    //갱신주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        //VC2의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        //값을 전달
        rvc.paramEmail = self.email.text! //이메일
        rvc.paramUpdate = self.isUpdate.isOn //자동갱신 여부
        rvc.paramInterVal = self.interval.value //갱신주기
        
        //화면이동
        //self.present(rvc, animated: true)
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //목적지 뷰 컨트롤러 인스턴스 읽어오기
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        //값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterVal = self.interval.value
    }
    
}

