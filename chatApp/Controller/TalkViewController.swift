//
//  TalkViewController.swift
//  chatApp
//
//  Created by yuta uchida on 2020/03/06.
//  Copyright © 2020 yuta. All rights reserved.
//

import UIKit
import SwiftMessages

class TalkViewController: UIViewController {

    let userDefaults  = UserDefaults.standard

    let nameLabel = UILabel()
    
    var userName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = true

        if userDefaults.object(forKey: "userName") != nil {
            userName = userDefaults.object(forKey: "userName") as! String
            print("ユーザ名取得: \(userName)")
        }
        
        popupMessage()
        
        
        // Do any additional setup after loading the view.
    }
    
    //ポップアップ表示
    func popupMessage() {
        
        //内容
        let bodyMessage = "\(userName)さん、こんにちは。\n\nなんでも好きなことを\n話してください。\n\n"
        let messageView = MessageView.viewFromNib(layout: .centeredView)
        messageView.configureBackgroundView(width: 250)
        messageView.configureContent(title: "", body: bodyMessage, iconImage: nil, iconText: nil, buttonImage: nil, buttonTitle: "はじめる。") { (UIButton) in
            SwiftMessages.hide()
        }
        messageView.backgroundView.backgroundColor = UIColor.white
        messageView.backgroundView.layer.cornerRadius = 10
        
        //設定
        var config = SwiftMessages.defaultConfig
        config.presentationStyle = .center
        config.duration = .forever
        config.dimMode = .blur(style: .dark, alpha: 0.7, interactive: true)
        
        SwiftMessages.show(config: config, view: messageView)
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
