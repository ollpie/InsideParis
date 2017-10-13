//
//  ViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 11.05.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    var maraisButton: UIButton!
    var stMatainButton: UIButton!
    var montmartreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if appDelegate.initialViewFirstUse {
            let alert = UIAlertController(title: "Bienvenue", message: Strings().homeMessage, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "D'accord", style: UIAlertActionStyle.default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            appDelegate.wasUsedBefore(view: "initial")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI(){
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        setMaraisButton()
        setStMatainButton()
        setMontmatreButton()
    }
    
    //Setup Buttons
    
    func setMaraisButton() {
        maraisButton = UIButton(type: UIButtonType.system)
        maraisButton.bounds = CGRect(x: 0, y: 0, width: screenWidth/2.7, height: screenWidth/2.7)
        maraisButton.center = CGPoint(x: screenHeight/5.15, y: screenHeight/1.66)
        //maraisButton.backgroundColor = UIColor.darkGray
        maraisButton.transform = CGAffineTransform(rotationAngle: -0.22)
        self.view.addSubview(maraisButton)
        maraisButton.addTarget(self, action: #selector(showMarais), for: .touchUpInside)
    }
    
    func setStMatainButton() {
        stMatainButton = UIButton(type: UIButtonType.system)
        stMatainButton.bounds = CGRect(x: 0, y: 0, width: screenWidth/2.7, height: screenWidth/2.7)
        stMatainButton.center = CGPoint(x: screenHeight/6.7, y: screenHeight/2.55)
        //stMatainButton.backgroundColor = UIColor.darkGray
        stMatainButton.transform = CGAffineTransform(rotationAngle: -0.22)
        self.view.addSubview(stMatainButton)
        stMatainButton.addTarget(self, action: #selector(showStMartin), for: .touchUpInside)
    }
    
    func setMontmatreButton() {
        montmartreButton = UIButton(type: UIButtonType.system)
        montmartreButton.bounds = CGRect(x: 0, y: 0, width: screenWidth/2.7, height: screenWidth/2.7)
        montmartreButton.transform = CGAffineTransform(rotationAngle: -0.22)
        montmartreButton.center = CGPoint(x: screenHeight/2.75, y: screenHeight/2.95)
        self.view.addSubview(montmartreButton)
        montmartreButton.addTarget(self, action: #selector(showMontmatre), for: .touchUpInside)
    }
    
    func setLexiconButton() {
        maraisButton = UIButton(type: UIButtonType.system)
        maraisButton.setTitle("Lexi", for: UIControlState.normal)
        maraisButton.bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
        maraisButton.center = CGPoint(x: 200, y: 200)
        self.view.addSubview(maraisButton)
        maraisButton.addTarget(self, action: #selector(showLexicon), for: .touchUpInside)
    }
    
    func showMarais() {
        appDelegate.currentQuarter = appDelegate.marais
        performSegue(withIdentifier: "toOverview", sender: self)
    }
    
    func showStMartin() {
        appDelegate.currentQuarter = appDelegate.stMartin
        performSegue(withIdentifier: "toOverview", sender: self)
    }
    
    func showMontmatre() {
        appDelegate.currentQuarter = appDelegate.montmartre
        performSegue(withIdentifier: "toOverview", sender: self)
    }
    
    func showLexicon() {
        performSegue(withIdentifier: "toOverview", sender: self)
    }
    

    //Setup for custom segues
    @IBAction func prepareForUnwind (segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindLeftRightTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }


}

