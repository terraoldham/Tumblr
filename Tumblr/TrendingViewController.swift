//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Terra Oldham on 11/9/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 1217)

    }

}
