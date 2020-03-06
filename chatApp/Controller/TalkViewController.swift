//
//  TalkViewController.swift
//  chatApp
//
//  Created by yuta uchida on 2020/03/06.
//  Copyright © 2020 yuta. All rights reserved.
//

import UIKit

class TalkViewController: UIViewController {

    let userDefaults  = UserDefaults.standard

    let nameLabel = UILabel()
    
    var userName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = true
        
        if userDefaults.object(forKey: "userName") != nil {
            userName = userDefaults.object(forKey: "userName") as! String
            print("ユーザ名取得→→→\(userName)")
        }
        
        
        nameLabel.frame = CGRect(x: view.frame.size.width/4, y: 20, width: view.frame.size.width/2, height: view.frame.size.height/10)
        nameLabel.text = "\(userName)さん、こんにちは"
        view.addSubview(nameLabel)
        
        
        
        
        // Do any additional setup after loading the view.
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
