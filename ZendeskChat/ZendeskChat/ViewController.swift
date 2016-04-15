//
//  ViewController.swift
//  ZendeskChat
//
//  Created by Inna S on 15.04.16.
//  Copyright © 2016 LetMeCode. All rights reserved.
//

import UIKit
import ZendeskSDK
import ZDCChat

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ZDCChat.configure {defaults in
            defaults.accountKey = "3q7yxPVsnlDVoazioqQZtTZ78eUcEwX5"
        }
        ZDCChat.instance().overlay.setEnabled(false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startChatBtnAction(sender: AnyObject) {
        //        let chatViewController = self.storyboard?.instantiateViewControllerWithIdentifier(String(ChatViewController)) as! ChatViewController
        //        self.navigationController?.pushViewController(chatViewController, animated: true)
        ZDCChat.configure { defaults in
            defaults.preChatDataRequirements.name = .Optional
            defaults.preChatDataRequirements.email = .Optional
        }
        
        ZDCChat.startChat(nil)
    }
}

