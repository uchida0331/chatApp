//
//  ViewController.swift
//  chatApp
//
//  Created by yuta uchida on 2020/03/06.
//  Copyright © 2020 yuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "tulip")
        
        titleLabel.text = "話をしましょう"
        
        commentLabel.text = "なんでもいいんだよ"
        
        loginButton.setTitle("ログイン", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 10
        loginButton.layer.backgroundColor = UIColor.gray.cgColor
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.shadowOpacity = 0.5
        loginButton.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        registerButton.setTitle("登録", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 10
        registerButton.layer.backgroundColor = UIColor.gray.cgColor
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.white.cgColor
        registerButton.layer.shadowOpacity = 0.5
        registerButton.layer.shadowOffset = CGSize(width: 2, height: 2)

        
        // Do any additional setup after loading the view.
    }

    
    //ログインボタン
    @IBAction func loginButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    //登録ボタン
    @IBAction func registerButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "register", sender: nil)
    }
    
    

}

