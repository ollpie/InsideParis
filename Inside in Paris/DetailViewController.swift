//
//  MainDetailViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 01.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let screenSize: CGRect = UIScreen.main.bounds
    let constraintConstant: CGFloat = 0
    let constraintMultiplier: CGFloat = 1
    let factorTwo: CGFloat = 2
    let mapBtnOffset: CGFloat = 80
    
    var backgroundImage: UIImageView!
    var currentPage: Int = 1
    var category = 0
    var categoryURL: String!
    var categoryWidth: Int!
    var categoryHeight: Int!
    var mapBtn: UIButton!
    var currentContentOffset: CGFloat = 0
    var ContentOffsetAfterPaging: CGFloat = 0
    var lastContentOffset: CGFloat = 0
    var initialXPos: CGFloat!
    var cameFromMapsView: Bool = false
    var buttonXPos: CGFloat!
    var cameNotFromLocal: Bool = true
    var viewWasVisited: Bool = false
    var cameFromSingleMapView: Bool = false
    var isLocal: Bool = false
    
    @IBOutlet weak var pageControll: UIPageControl!
    
    @IBAction func backBtn(_ sender: UIButton) {
        viewWasVisited = true
        if cameFromMapsView {
            goBack(identifier: "backToMaps")
            cameFromMapsView = false
        } else {
            goBack(identifier: "backToCategory")
        }
    }
    
    var initialContentOffset: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryURL = appDelegate.currentQuarter.getCategoryDetail(category: self.category).url
        categoryWidth = appDelegate.currentQuarter.getCategoryDetail(category: self.category).width
        categoryHeight = appDelegate.currentQuarter.getCategoryDetail(category: self.category).height
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        returnFromSingleMapView()
        handleInitialAlert()
    }
    
    func returnFromSingleMapView() {
        if !cameFromSingleMapView {
            scrollView.contentOffset = CGPoint(x: screenSize.width*CGFloat(currentPage-1), y: 0)
            pageControll.currentPage = currentPage-1
        }
    }
    
    func handleInitialAlert() {
        if appDelegate.mainViewFirstUse && cameNotFromLocal{
            let alert = UIAlertController(title: "Bonne journée", message: Strings().detailViewMessage, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "D'accord", style: UIAlertActionStyle.default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            appDelegate.wasUsedBefore(view: "main")
        }
    }
    
    func setupUI() {
        self.scrollView.delegate = self
        backgroundImage = UIImageView()
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenSize.width * CGFloat(categoryWidth), height: screenSize.height * CGFloat(categoryHeight))
        backgroundImage.image = UIImage(named: categoryURL)
        scrollView.addSubview(backgroundImage)
        initialXPos = screenSize.width*CGFloat((currentPage-1))
        buttonXPos  = calculateMapBtnXPos()
        setupConstraints()
        setupMapButtons()
        initialContentOffset = CGPoint(x: initialXPos, y: 0)
        currentContentOffset = initialXPos
        ContentOffsetAfterPaging = initialXPos
        lastContentOffset = initialXPos
        setupPageControll()
    }
    
    func calculateMapBtnXPos() -> CGFloat {
        return (screenSize.width/2)+CGFloat(CGFloat(currentPage-1)*screenSize.width)
    }
    
    func setupConstraints() {
        let topConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.top, multiplier: constraintMultiplier, constant: constraintConstant)
        let bottomConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.bottom, multiplier: constraintMultiplier, constant: constraintConstant)
        let leadingConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.leading, multiplier: constraintMultiplier, constant: constraintConstant)
        let trailingConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.trailing, multiplier: constraintMultiplier, constant: constraintConstant)
        let widthConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: constraintMultiplier, constant: screenSize.width*CGFloat(categoryWidth))
        let heightConstraint = NSLayoutConstraint(item: backgroundImage, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: constraintMultiplier, constant: screenSize.height*CGFloat(categoryHeight))
        scrollView.addConstraints([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint, widthConstraint, heightConstraint])
    }
    
    //Map stuff
    func setupMapButtons() {
        mapBtn = UIButton(type: UIButtonType.system)
        mapBtn.bounds = CGRect(x: 0, y: 0, width: screenSize.width, height: 190)
        mapBtn.center = CGPoint(x: buttonXPos, y: screenSize.height * CGFloat(categoryHeight)-80)
        scrollView.addSubview(mapBtn)
        mapBtn.addTarget(self, action: #selector(showSingleLocation(_:)), for: .touchUpInside)
    }
    
    func showSingleLocation(_ button: UIButton) {
        performSegue(withIdentifier: "toSingleMapLocation", sender: self)
        cameFromSingleMapView = true
    }

    
    func setupPageControll() {
        if isLocal {
            pageControll.isHidden = true
        } else if !isLocal {
            pageControll.isHidden = false
        }
        pageControll.frame.origin.y = screenSize.height*0.05397
        pageControll.numberOfPages = categoryWidth
    }
    
    //scrollView stuff
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        initialContentOffset = scrollView.contentOffset
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        initialContentOffset = scrollView.contentOffset
        if (self.ContentOffsetAfterPaging > scrollView.contentOffset.x) {
            scrollToTop()
            positionMapBtn()
        }
        else if (self.ContentOffsetAfterPaging < scrollView.contentOffset.x) {
            scrollToTop()
            positionMapBtn()
        }
        self.ContentOffsetAfterPaging = scrollView.contentOffset.x
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
    
    func positionMapBtn() {
        mapBtn.center =  CGPoint(x: calculateMapBtnXPos(), y: screenSize.height * CGFloat(categoryHeight)-mapBtnOffset)
    }
    
    func determinePagePosition(xPos: Int) {
        scrollView.setContentOffset(CGPoint(x: xPos, y: 0), animated: true)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updatePageCount()
        blockDiagonalScrolling()
    }
    
    func updatePageCount() {
        currentContentOffset = scrollView.contentOffset.x
        // scroll to left
        if currentContentOffset>(lastContentOffset+screenSize.width/factorTwo) {
            lastContentOffset = lastContentOffset+screenSize.width
            currentPage += 1
            // updates page indicator at the top of the screen
            updatePageControll()
        //scroll to right
        } else if currentContentOffset<(lastContentOffset-screenSize.width/factorTwo) {
            lastContentOffset = lastContentOffset-screenSize.width
            currentPage -= 1
            updatePageControll()
        }
    }
    
    func updatePageControll() {
        pageControll.currentPage = currentPage-1
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
        let segue = UnwindRightLeftTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }
    
    func goBack(identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}
