//
//  AboutMeViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 02.07.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    var backgroundImage: UIImageView!
    let screenSize: CGRect = UIScreen.main.bounds
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self as? UIScrollViewDelegate
        backgroundImage = UIImageView()
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height * CGFloat(2))
        backgroundImage.image = UIImage(named: "AboutMe")
        scrollView.addSubview(backgroundImage)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        let topConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0)
        let leadingConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: screenSize.width*4)
        let heightConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: screenSize.height*3)
        scrollView.addConstraints([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint, widthConstraint, heightConstraint])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
