//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Terra Oldham on 11/9/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonFrame: CGFloat!
    var quoteButtonFrame: CGFloat!
    var photoButtonFrame: CGFloat!
    var linkButtonFrame: CGFloat!
    var chatButtonFrame: CGFloat!
    var videoButtonFrame: CGFloat!

    @IBAction func nevermindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.textButtonFrame = self.textButton.frame.origin.y - 300
        })
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.chatButtonFrame = self.chatButton.frame.origin.y - 300
        })
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.photoButtonFrame = self.photoButton.frame.origin.y - 300
        })
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textButton.frame.origin.y = 181
        quoteButton.frame.origin.y = 181
        photoButton.frame.origin.y = 181
        linkButton.frame.origin.y = 297
        chatButton.frame.origin.y = 297
        videoButton.frame.origin.y = 297
        

    }

}
