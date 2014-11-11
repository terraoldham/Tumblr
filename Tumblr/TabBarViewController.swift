//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Terra Oldham on 11/9/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    
    var isPresenting: Bool = true

    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var currentButton: UIButton!
    var currentViewController: UIViewController!
    var composeVC: UIViewController!
    
    @IBAction func onTabClick(sender: UIButton) {
        currentButton.selected = false
        currentButton = sender
        currentButton.selected = true
        currentViewController.view.removeFromSuperview()
    
        switch (currentButton.tag) {
        case 2:
            //Search View Controller
            currentViewController = searchViewController
            break;
        case 3:
            //Account View Controller
            currentViewController = accountViewController
            break;
        case 4:
            //Trending View Controller
            currentViewController = trendingViewController
            break;
        default:
            currentViewController = homeViewController
        }
        
        contentView.addSubview(currentViewController.view)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeViewController = storyboard?.instantiateViewControllerWithIdentifier("Home") as UIViewController
        //self.addChildViewController(homeViewController)
        
        searchViewController = storyboard?.instantiateViewControllerWithIdentifier("Search") as UIViewController
        //self.addChildViewController(searchViewController)
        
        accountViewController = storyboard?.instantiateViewControllerWithIdentifier("Account") as UIViewController
        //self.addChildViewController(accountViewController)
        
        trendingViewController = storyboard?.instantiateViewControllerWithIdentifier("Trending") as UIViewController
        //self.addChildViewController(trendingViewController)
        
        currentButton = homeButton
        currentViewController = homeViewController
        contentView.addSubview(homeViewController.view)
        
    }
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = true
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        
        if (isPresenting) {
            var composeVC = toViewController as ComposeViewController
            
            composeVC.textButton.frame.origin.y = 490
            composeVC.quoteButton.frame.origin.y = 550
            composeVC.photoButton.frame.origin.y = 575
            composeVC.linkButton.frame.origin.y = 1900
            composeVC.chatButton.frame.origin.y = 2500
            composeVC.videoButton.frame.origin.y = 1000
            
            
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                
                composeVC.view.alpha = 1
                composeVC.backgroundView.alpha = 0.7
                composeVC.nevermindButton.alpha = 1
                composeVC.textButton.frame.origin.y = 181
                composeVC.quoteButton.frame.origin.y = 181
                composeVC.photoButton.frame.origin.y = 181
                composeVC.linkButton.frame.origin.y = 297
                composeVC.chatButton.frame.origin.y = 297
                composeVC.videoButton.frame.origin.y = 297
                
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
        
        } else {
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
            }
        }
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
        
    }

}
