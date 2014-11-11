//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Terra Oldham on 11/9/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

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

}
