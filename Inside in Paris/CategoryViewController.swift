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
    var btnID = 0
    
    @IBAction func cafeBtn(_ sender: UIButton) {
        btnID = 0
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func cultureBtn(_ sender: UIButton) {
        btnID = 1
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func shoppingBtn(_ sender: UIButton) {
        btnID = 2
        triggerSegue(identifier: "toDetail")
    }

    @IBAction func restBtn(_ sender: UIButton) {
        btnID = 3
        triggerSegue(identifier: "toDetail")
    }
    
    @IBAction func barBtn(_ sender: UIButton) {
        btnID = 4
        triggerSegue(identifier: "toDetail")
    }
    
    @IBAction func localReportBtn(_ sender: UIButton) {
        btnID = 5
        triggerSegue(identifier: "toDetail")
    }
    
    /*@IBAction func homeBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goHomeFromCat", sender: self)
    }*/
    
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
            let controller = segue.destination as! MainDetailViewController
            controller.category = btnID
        }
    }

}
