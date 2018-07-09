import UIKit

class ResultViewController : UIViewController {
    @IBOutlet var resultEmail: UILabel! //이메일
    @IBOutlet var resultUpdate: UILabel! //자동갱신 여부
    @IBOutlet var resultInterVal: UILabel! //갱신주기
    
    //email 값을 받을 변수
    var paramEmail : String = ""
    
    //update 값을 받을 변수
    var paramUpdate : Bool = false
    
    //Interval 값을 받을 변수
    var paramInterVal : Double = 0
    
    
}
