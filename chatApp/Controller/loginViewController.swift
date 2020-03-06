//
//  LoginViewController.swift
//  chatApp
//
//  Created by yuta uchida on 2020/03/06.
//  Copyright © 2020 yuta. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var decideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headImage.image = UIImage(named: "tulip")
        
        titleLabel.text = "Login"
        titleLabel.font = UIFont(name: "Futura", size: 30)
        
        emailTextField.placeholder = "email"
        passwordTextField.placeholder = "password"
        
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
    

    
    @IBAction func decideButtonAction(_ sender: Any) {
        
        
        performSegue(withIdentifier: "talk", sender: nil)
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
