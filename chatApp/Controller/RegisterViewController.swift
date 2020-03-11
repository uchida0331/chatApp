//
//  RegisterViewController.swift
//  chatApp
//
//  Created by yuta uchida on 2020/03/06.
//  Copyright © 2020 yuta. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var decideButton: UIButton!
    
    var userName:String = ""
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headImage.image = UIImage(named: "tulip")

        //ラベル
        titleLabel.text = "Sign up"
        titleLabel.font = UIFont(name: "Futura", size: 30)
        
        //テキストフィールド
        userNameTextField.delegate  = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        userNameTextField.placeholder = "name"
        emailTextField.placeholder = "email"
        passwordTextField.placeholder = "password"
        
        //ボタン
        decideButton.setTitle("", for: .normal)
        decideButton.setTitleColor(.white, for: .normal)
        decideButton.layer.backgroundColor = UIColor.lightGray.cgColor
        decideButton.layer.borderColor = UIColor.white.cgColor
        decideButton.layer.borderWidth = 2
        decideButton.layer.cornerRadius = 30
        decideButton.layer.shadowOpacity = 0.5
        decideButton.layer.shadowOffset = CGSize(width: 2, height: 2)
     
        // Do any additional setup after loading the view.
    }
    
    //決定ボタン
    @IBAction func decideButtonAction(_ sender: Any) {
        
        userName = userNameTextField.text!
        userDefaults.set(userName, forKey: "userName")
        
        //ユーザ登録
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, error) in

            if error != nil {
                print("ユーザ登録失敗")
                print(error as Any)
                let alert = UIAlertController(title: "登録に失敗しました", message: "もう一度入力してください", preferredStyle: .alert)
                let action = UIAlertAction(title: "わかりました", style: .default) { (UIAlertAction) in
                    return
                }
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            } else {
                print("ユーザ登録成功")
                self.performSegue(withIdentifier: "talk", sender: nil)
            }
        }
    }

    //キーボード設定
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
