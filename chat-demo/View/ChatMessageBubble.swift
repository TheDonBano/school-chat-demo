//
//  ChatMessageBubble.swift
//  chat-demo
//
//  Created by Huy Vo on 2/8/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

import UIKit

class ChatMessageBubble: UITableViewCell{
    
    var chatMessageModel: ChatMessageModel!
    
    @IBOutlet weak var message: UITextView!
    
    override func awakeFromNib() {
     
    }
 
    override func draw(_ rect: CGRect) {
       
        initMessageView()
    }
    func initMessageView(){
    
        message.translatesAutoresizingMaskIntoConstraints = true
        message.sizeToFit()
        message.isScrollEnabled = true
       
        message.text = chatMessageModel.message
        
        message.isEditable = false
        message.layer.cornerRadius = 5.0
        message.backgroundColor = UIColor(rgb: 0x29B6F6)
        message.textColor = UIColor.white
        
        message.frame.origin.x = 10
        
        if chatMessageModel.uuid != Auth.auth.user?.uuid{
            message.frame.origin.x = UIScreen.main.bounds.width - 100
            message.backgroundColor = UIColor(rgb: 0x00897B)
        }
        // message from chat 
        
    }
}
