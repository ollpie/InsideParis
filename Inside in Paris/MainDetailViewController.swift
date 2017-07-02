//
//  MainDetailViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 01.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class MainDetailViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let screenSize: CGRect = UIScreen.main.bounds
    var backgroundImage: UIImageView!
    var currentPage: Int = 1
    var category = 0
    var categoryURL: String!
    var categoryWidth: Int!
    var categoryHeight: Int!
    var btn: UIButton!
    var currentContentOffset: CGFloat = 0
    var ContentOffsetAfterPaging: CGFloat = 0
    var lastContentOffset: CGFloat = 0
    
    var initialContentOffset: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryURL = appDelegate.currentQuarter.getCategoryDetail(category: self.category).url
        categoryWidth = appDelegate.currentQuarter.getCategoryDetail(category: self.category).width
        categoryHeight = appDelegate.currentQuarter.getCategoryDetail(category: self.category).height
        setupUI()
    }
    
    func setupUI() {
        self.scrollView.delegate = self
        backgroundImage = UIImageView()
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenSize.width * CGFloat(categoryWidth), height: screenSize.height * CGFloat(categoryHeight))
        backgroundImage.image = UIImage(named: categoryURL)
        scrollView.addSubview(backgroundImage)
        setupConstraints()
        setupMapButtons()
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
    
    //Map stuff
    func setupMapButtons() {
        btn = UIButton(type: UIButtonType.system)
        btn.bounds = CGRect(x: 0, y: 0, width: screenSize.width, height: 190)
        btn.center = CGPoint(x: screenSize.width/2, y: screenSize.height * CGFloat(categoryHeight)-80)
        scrollView.addSubview(btn)
        btn.addTarget(self, action: #selector(showSingleLocation(_:)), for: .touchUpInside)
    }
    
    func showSingleLocation(_ button: UIButton) {
        performSegue(withIdentifier: "toSingleMapLocation", sender: self)
    }
    
    //scrollView stuff
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        initialContentOffset = scrollView.contentOffset
        print(initialContentOffset)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
                initialContentOffset = scrollView.contentOffset
        if (self.ContentOffsetAfterPaging > scrollView.contentOffset.x) {
            scrollToTop()
            btn.center = CGPoint(x: (screenSize.width/2)+CGFloat(CGFloat(currentPage-1)*screenSize.width), y: screenSize.height * CGFloat(categoryHeight)-80)
        }
        else if (self.ContentOffsetAfterPaging < scrollView.contentOffset.x) {
            scrollToTop()
            btn.center = CGPoint(x: (screenSize.width/2)+CGFloat(CGFloat(currentPage-1)*screenSize.width), y: screenSize.height * CGFloat(categoryHeight)-80)
        }
        self.ContentOffsetAfterPaging = scrollView.contentOffset.x
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updatePageCount()
        blockDiagonalScrolling()
    }
    
    func updatePageCount() {
        currentContentOffset = scrollView.contentOffset.x
        if currentContentOffset>(lastContentOffset+screenSize.width/2) {
            lastContentOffset = lastContentOffset+screenSize.width
            currentPage += 1
        } else if currentContentOffset<(lastContentOffset-screenSize.width/2) {
            lastContentOffset = lastContentOffset-screenSize.width
            currentPage -= 1
        }
    }
    
    func blockDiagonalScrolling(){
        if (scrollView.contentOffset.x != self.initialContentOffset.x)
        {
            scrollView.isPagingEnabled = true;
            scrollView.contentOffset = CGPoint(x: scrollView.contentOffset.x, y: self.initialContentOffset.y);
        } else {
            scrollView.isPagingEnabled = true;
        }
    }
    
    func scrollToTop() {
        switch currentPage {
        case 1:
            determinePagePosition(xPos: 0)
        case 2:
            determinePagePosition(xPos: Int(screenSize.width))
        case 3:
            determinePagePosition(xPos: Int(screenSize.width)*2)
        case 4:
            determinePagePosition(xPos: Int(screenSize.width)*3)
        case 5:
            determinePagePosition(xPos: Int(screenSize.width)*4)
        default:
            break
        }
    }
    
    func determinePagePosition(xPos: Int) {
        scrollView.setContentOffset(CGPoint(x: xPos, y: 0), animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSingleMapLocation" {
            let controller = segue.destination as! SingpleMapLocationViewController
            controller.category = category
            controller.item = currentPage-1
        }
    }
    
    //These two functions handle the custom navigation segues
    @IBAction func prepareForUnwindToDetailView (segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindLeftRightTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }
}

enum ScrollDirection {
    case ScrollDirectionNone, ScrollDirectionCrazy, ScrollDirectionUp, ScrollDirectionDown, ScrollDirectionLeft, ScrollDirectionRight, ScrollDirectionHorizontal, ScrollDirectionVertical
}
