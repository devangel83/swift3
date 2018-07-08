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
    
    
}

