//
//  ViewController.swift
//  UnitAndUITestEx
//
//  Created by White Hobbit on 2017. 1. 12..
//  Copyright © 2017년 WhiteHobbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    enum signInCase {
        case FAIL_EMPTY, FAIL_ID, FAIL_PASSWORD, SUCCESS
        
        func discription() -> String {
            switch self {
            case .FAIL_EMPTY:
                return "FAIL_EMPTY"
            case .FAIL_ID:
                return "FAIL_ID"
            case .FAIL_PASSWORD:
                return "FAIL_PASSWORD"
            case .SUCCESS:
                return "SUCCESS"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signIn(_ sender: Any) {
//        print("====================== 로그인 ======================")
        let flag = checkLogin(id: idLabel.text, pw: passwordLabel.text)
        flag.discription()
        switch flag {
        case .FAIL_EMPTY:
//            print("FAIL_EMPTY")
            makeAlert(title: "FAIL", message: "id와 password를 입력해주세요.")
        case .FAIL_ID:
//            print("FAIL_ID")
            makeAlert(title: "FAIL", message: "id를 확인해주세요.")
        case .FAIL_PASSWORD:
//            print("FAIL_PASSWORD")
            makeAlert(title: "FAIL", message: "password를 확인해주세요.")
        case .SUCCESS:
//            print("SUCCESS")
            performSegue(withIdentifier: "login", sender: self)
        }
    }

    func checkLogin(id idLabel: String?, pw pwLabel: String?) -> signInCase {
        guard let id = idLabel, let pw = pwLabel, id != "" || pw != "" else {
            return .FAIL_EMPTY
        }
        
        guard id == "test" else {
            return .FAIL_ID
        }
        
        guard pw == "test" else {
            return .FAIL_PASSWORD
        }
        
        return .SUCCESS
    }
    
    func makeAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
}

