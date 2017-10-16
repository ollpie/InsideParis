//
//  CategoryViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 01.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let cafeBtn: Int = 0
    let cultureBtn: Int = 1
    let shoppingBtn: Int = 2
    let restaurantBtn: Int = 3
    let barBtn: Int = 4
    let localReportBtn: Int = 5
    var btnID = 0
    var showUsageHint = true
    var local = false
    
    @IBAction func cafeBtn(_ sender: UIButton) {
        btnID = cafeBtn
        showUsageHint = true
        local = false
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func cultureBtn(_ sender: UIButton) {
        btnID = cultureBtn
        showUsageHint = true
        local = false
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func shoppingBtn(_ sender: UIButton) {
        btnID = shoppingBtn
        showUsageHint = true
        local = false
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func restBtn(_ sender: UIButton) {
        btnID = restaurantBtn
        showUsageHint = true
        local = false
        triggerSegue(identifier: "toDetail")
    }
    
    @IBAction func barBtn(_ sender: UIButton) {
        btnID = barBtn
        showUsageHint = true
        local = false
        triggerSegue(identifier: "toDetail")
    }
    
    @IBAction func localReportBtn(_ sender: UIButton) {
        btnID = localReportBtn
        showUsageHint = false
        local = true
        triggerSegue(identifier: "toDetail")
    }
    
    @IBOutlet weak var backgrdView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        backgrdView.image = UIImage(named: appDelegate.currentQuarter.getCategoryImage())
    }
    
    func triggerSegue(identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    
    //These two functions handle the custom navigation segues
    @IBAction func prepareForUnwindToCategoryView (segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindLeftRightTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let controller = segue.destination as! DetailViewController
            controller.category = btnID
            controller.cameNotFromLocal = showUsageHint
            controller.isLocal = local
        }
    }

}
