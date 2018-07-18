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
        
        //실행 버튼0
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
    
    
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store에 로그인"
        let message = "사용자의 Apple ID 의 암호를 입력하십시오"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title:"확인", style: .default) {
            (_) in
            
            //확인 버튼을 클릭했을 때 처리할 내용
            if let tf = alert.textFields?[0] {
                print("입력된 값은 \(tf.text!)입니다.")
            } else {
                print("입력된 값이 없습니다.")
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
    
        //텍스트 필드 추가
        alert.addTextField(configurationHandler: { (tf) in
            //텍스트필드의 속성설정
            tf.placeholder = "암호" //안내 메시지
            tf.isSecureTextEntry = true //비밀번호 처리
        })
        
        self.present(alert, animated: false)
    }
    
    
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title:"확인", style: .default) {
            (_) in
            //확인 버튼을 클릭했을 때 처리할 내용
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "lostangel83" && loginPw == "1234" {
                self.result.text = "인증되었습니다"
            } else {
                self.result.text = "인증에 실패하였습니다"
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //텍스트 필드 추가-아이디
        alert.addTextField(configurationHandler: { (tf) in
            //텍스트필드의 속성설정
            tf.placeholder = "아이디" //안내 메시지
            tf.isSecureTextEntry = false //비밀번호 처리 안함
        })
        
        //텍스트 필드 추가 - 비밀번호
        alert.addTextField(configurationHandler: { (tf) in
            //텍스트필드의 속성설정
            tf.placeholder = "비밀번호" //안내 메시지
            tf.isSecureTextEntry = true //비밀번호 처리
        })
        
        self.present(alert, animated: false)
    }
    
    
    
}

