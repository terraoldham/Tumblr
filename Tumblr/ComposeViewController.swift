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
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var nevermindView: UIView!
    @IBOutlet weak var nevermindImageView: UIImageView!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    var textButtonFrame: CGFloat!
    var quoteButtonFrame: CGFloat!
    var photoButtonFrame: CGFloat!
    var linkButtonFrame: CGFloat!
    var chatButtonFrame: CGFloat!
    var videoButtonFrame: CGFloat!

    @IBAction func nevermindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.textButtonFrame = self.textButton.frame.origin.y - 500
            self.textButton.frame.origin.y = self.textButtonFrame
        })
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.chatButtonFrame = self.chatButton.frame.origin.y - 500
            self.chatButton.frame.origin.y = self.chatButtonFrame
        })
        UIView.animateWithDuration(0.5, delay: 0.2, options: nil, animations: { () -> Void in
            self.chatButtonFrame = self.chatButton.frame.origin.y - 500
            self.chatButton.frame.origin.y = self.chatButtonFrame
            }, completion: nil)
        UIView.animateWithDuration(0.8, animations: { () -> Void in
            self.linkButtonFrame = self.linkButton.frame.origin.y - 500
            self.linkButton.frame.origin.y = self.linkButtonFrame
        })
        dismissViewControllerAnimated(true, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, options: nil, animations: { () -> Void in
            self.quoteButtonFrame = self.quoteButton.frame.origin.y - 500
            self.quoteButton.frame.origin.y = self.quoteButtonFrame
        }, completion: nil)
        UIView.animateWithDuration(0.9, animations: { () -> Void in
            self.videoButtonFrame = self.videoButton.frame.origin.y - 500
            self.videoButton.frame.origin.y = self.videoButtonFrame
        })
        UIView.animateWithDuration(0.2, delay: 0.2, options: nil, animations: { () -> Void in
            self.photoButtonFrame = self.photoButton.frame.origin.y - 500
            self.photoButton.frame.origin.y = self.photoButtonFrame
            }, completion: nil)
    
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
