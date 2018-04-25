//
//  MessagesViewController.swift
//  StateStickers MessagesExtension
//
//  Created by Erica Gorochow on 4/25/18.
//  Copyright © 2018 Erica Gorochow. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
     var browserViewController: StateStickerBrowserViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        browserViewController = StateStickerBrowserViewController(stickerSize: .regular)
        browserViewController.view.frame = self.view.frame
        
        self.addChildViewController(browserViewController); browserViewController.didMove(toParentViewController: self); self.view.addSubview(browserViewController.view)
        
        browserViewController.loadStickers(); browserViewController.stickerBrowserView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    

    }

