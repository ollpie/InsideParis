//
//  LexiconViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 03.07.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class LexiconViewController: UIViewController {

    var backgroundImage: UIImageView!
    var aperoButton: UIButton!
    var baguetteButton: UIButton!
    var cafeButton: UIButton!
    var aoutButton: UIButton!
    var biseButton: UIButton!
    var clopeButton: UIButton!
    var caraffeButton: UIButton!
    var boboButton: UIButton!
    var eventsButton: UIButton!
    var epicerieButton: UIButton!
    var droitButton: UIButton!
    var gouterButton: UIButton!
    var feuButton: UIButton!
    var humourButton: UIButton!
    var jardinButton: UIButton!
    var moinsButton: UIButton!
    var pourboireButton: UIButton!
    var metroButton: UIButton!
    var plancheButton: UIButton!
    var riveButton: UIButton!
    var quartierButton: UIButton!
    var soireeButton: UIButton!
    var velibButton: UIButton!
    var quaisButton: UIButton!
    var terrasseButton: UIButton!
    var soldesButton: UIButton!
    var piqueniqueButton: UIButton!
    var verreButton: UIButton!
    let screenSize: CGRect = UIScreen.main.bounds
    
    var buttons: [UIButton]!
    
    @IBAction func closeButton(_ sender: UIButton) {
        animateOverlay(opacity: 0.0)
        toggleButtons()
    }
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var overlayImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overlayImage.alpha = 0.0
        closeButton.isHidden = true
        self.scrollView.delegate = self as? UIScrollViewDelegate
        backgroundImage = UIImageView()
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height * CGFloat(2))
        backgroundImage.image = UIImage(named: "lexikon")
        scrollView.addSubview(backgroundImage)
        setupConstraints()
        setupButtons()
        
        
    }
    
    func setupButtons() {
        aperoButton = UIButton(type: UIButtonType.system)
        aperoButton.frame = CGRect(x: screenSize.width*0.053, y: screenSize.width*0.28, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(aperoButton)
        aperoButton.addTarget(self, action: #selector(showApero), for: .touchUpInside)
        
        baguetteButton = UIButton(type: UIButtonType.system)
        baguetteButton.frame = CGRect(x: screenSize.width*0.53, y: screenSize.width*0.26, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(baguetteButton)
        baguetteButton.addTarget(self, action: #selector(showBaguette), for: .touchUpInside)
        
        cafeButton = UIButton(type: UIButtonType.system)
        cafeButton.frame = CGRect(x: screenSize.width*0.0426, y: screenSize.width*0.55, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(cafeButton)
        cafeButton.addTarget(self, action: #selector(showCafe), for: .touchUpInside)
        
        aoutButton = UIButton(type: UIButtonType.system)
        aoutButton.frame = CGRect(x: screenSize.width*0.35, y: screenSize.width*0.51, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(aoutButton)
        aoutButton.addTarget(self, action: #selector(showAout), for: .touchUpInside)
        
        biseButton = UIButton(type: UIButtonType.system)
        biseButton.frame = CGRect(x: screenSize.width*0.68, y: screenSize.width*0.58, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(biseButton)
        biseButton.addTarget(self, action: #selector(showBise), for: .touchUpInside)
        
        clopeButton = UIButton(type: UIButtonType.system)
        clopeButton.frame = CGRect(x: screenSize.width*0.074, y: screenSize.width*0.85, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(clopeButton)
        clopeButton.addTarget(self, action: #selector(showClope), for: .touchUpInside)
        
        caraffeButton = UIButton(type: UIButtonType.system)
        caraffeButton.frame = CGRect(x: screenSize.width*0.37, y: screenSize.width*0.80, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(caraffeButton)
        caraffeButton.addTarget(self, action: #selector(showCarafe), for: .touchUpInside)
        
        boboButton = UIButton(type: UIButtonType.system)
        boboButton.frame = CGRect(x: screenSize.width*0.72, y: screenSize.width*0.86, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(boboButton)
        boboButton.addTarget(self, action: #selector(showBobo), for: .touchUpInside)
        
        droitButton = UIButton(type: UIButtonType.system)
        droitButton.frame = CGRect(x: screenSize.width*0.0426, y: screenSize.width*1.2, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(droitButton)
        droitButton.addTarget(self, action: #selector(showDroit), for: .touchUpInside)
        
        epicerieButton = UIButton(type: UIButtonType.system)
        epicerieButton.frame = CGRect(x: screenSize.width*0.38, y: screenSize.width*1.12, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(epicerieButton)
        epicerieButton.addTarget(self, action: #selector(showEpicerie), for: .touchUpInside)
        
        eventsButton = UIButton(type: UIButtonType.system)
        eventsButton.frame = CGRect(x: screenSize.width*0.73, y: screenSize.width*1.13, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(eventsButton)
        eventsButton.addTarget(self, action: #selector(showEvents), for: .touchUpInside)
        
        gouterButton = UIButton(type: UIButtonType.system)
        gouterButton.frame = CGRect(x: screenSize.width*0.0426, y: screenSize.width*1.5, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(gouterButton)
        gouterButton.addTarget(self, action: #selector(showGouter), for: .touchUpInside)
        
        feuButton = UIButton(type: UIButtonType.system)
        feuButton.frame = CGRect(x: screenSize.width*0.41, y: screenSize.width*1.44, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(feuButton)
        feuButton.addTarget(self, action: #selector(showFeu), for: .touchUpInside)
        
        humourButton = UIButton(type: UIButtonType.system)
        humourButton.frame = CGRect(x: screenSize.width*0.72, y: screenSize.width*1.51, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(humourButton)
        humourButton.addTarget(self, action: #selector(showHumour), for: .touchUpInside)
        
        jardinButton = UIButton(type: UIButtonType.system)
        jardinButton.frame = CGRect(x: screenSize.width*0.0426, y: screenSize.width*2.05, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(jardinButton)
        jardinButton.addTarget(self, action: #selector(showJardin), for: .touchUpInside)
        
        moinsButton = UIButton(type: UIButtonType.system)
        moinsButton.frame = CGRect(x: screenSize.width*0.50, y: screenSize.width*2.005, width: screenSize.width*0.34, height: screenSize.width*0.22)
        self.scrollView.addSubview(moinsButton)
        moinsButton.addTarget(self, action: #selector(showMoins), for: .touchUpInside)
        
        pourboireButton = UIButton(type: UIButtonType.system)
        pourboireButton.frame = CGRect(x: screenSize.width*0.24, y: screenSize.width*2.27, width: screenSize.width*0.34, height: screenSize.width*0.22)
        self.scrollView.addSubview(pourboireButton)
        pourboireButton.addTarget(self, action: #selector(showPourboire), for: .touchUpInside)
        
        metroButton = UIButton(type: UIButtonType.system)
        metroButton.frame = CGRect(x: screenSize.width*0.71, y: screenSize.width*2.29, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(metroButton)
        metroButton.addTarget(self, action: #selector(showMetro), for: .touchUpInside)
        
        plancheButton = UIButton(type: UIButtonType.system)
        plancheButton.frame = CGRect(x: screenSize.width*0.048, y: screenSize.width*2.51, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(plancheButton)
        plancheButton.addTarget(self, action: #selector(showPlanche), for: .touchUpInside)
        
        riveButton = UIButton(type: UIButtonType.system)
        riveButton.frame = CGRect(x: screenSize.width*0.37, y: screenSize.width*2.55, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(riveButton)
        riveButton.addTarget(self, action: #selector(showRive), for: .touchUpInside)
        
        quartierButton = UIButton(type: UIButtonType.system)
        quartierButton.frame = CGRect(x: screenSize.width*0.73, y: screenSize.width*2.57, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(quartierButton)
        quartierButton.addTarget(self, action: #selector(showQuartier), for: .touchUpInside)
        
        quaisButton = UIButton(type: UIButtonType.system)
        quaisButton.frame = CGRect(x: screenSize.width*0.042, y: screenSize.width*2.79, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(quaisButton)
        quaisButton.addTarget(self, action: #selector(showQuais), for: .touchUpInside)
        
        velibButton = UIButton(type: UIButtonType.system)
        velibButton.frame = CGRect(x: screenSize.width*0.32, y: screenSize.width*2.82, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(velibButton)
        velibButton.addTarget(self, action: #selector(showVelib), for: .touchUpInside)
        
        soireeButton = UIButton(type: UIButtonType.system)
        soireeButton.frame = CGRect(x: screenSize.width*0.64, y: screenSize.width*2.83, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(soireeButton)
        soireeButton.addTarget(self, action: #selector(showSoiree), for: .touchUpInside)
        
        terrasseButton = UIButton(type: UIButtonType.system)
        terrasseButton.frame = CGRect(x: screenSize.width*0.096, y: screenSize.width*3.09, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(terrasseButton)
        terrasseButton.addTarget(self, action: #selector(showTerasse), for: .touchUpInside)
        
        soldesButton = UIButton(type: UIButtonType.system)
        soldesButton.frame = CGRect(x: screenSize.width*0.48, y: screenSize.width*3.11, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(soldesButton)
        soldesButton.addTarget(self, action: #selector(showSoldes), for: .touchUpInside)
        
        piqueniqueButton = UIButton(type: UIButtonType.system)
        piqueniqueButton.frame = CGRect(x: screenSize.width*0.032, y: screenSize.width*3.37, width: screenSize.width*0.34, height: screenSize.width*0.22)
        self.scrollView.addSubview(piqueniqueButton)
        piqueniqueButton.addTarget(self, action: #selector(showPicknick), for: .touchUpInside)
        
        verreButton = UIButton(type: UIButtonType.system)
        verreButton.frame = CGRect(x: screenSize.width*0.71, y: screenSize.width*3.27, width: screenSize.width*0.22, height: screenSize.width*0.22)
        self.scrollView.addSubview(verreButton)
        verreButton.addTarget(self, action: #selector(showVerre), for: .touchUpInside)
        
        buttons = [aperoButton, baguetteButton, cafeButton, aoutButton, biseButton, clopeButton, caraffeButton, boboButton, droitButton, epicerieButton, eventsButton, gouterButton, feuButton, humourButton, jardinButton, moinsButton, pourboireButton, metroButton, plancheButton, riveButton, quartierButton, quaisButton, velibButton, soireeButton, terrasseButton, soldesButton, piqueniqueButton, verreButton]
    }
    
    func showApero() {
        showOverlay(imageSrc: "apero")
    }
    
    func showBaguette() {
        showOverlay(imageSrc: "baguette")
    }
    
    func showCafe() {
        showOverlay(imageSrc: "cafe")
    }
    
    func showClope() {
        showOverlay(imageSrc: "clope")
    }
    
    func showBise() {
        showOverlay(imageSrc: "bise")
    }
    
    func showCarafe() {
        showOverlay(imageSrc: "carafe d'eau")
    }
    
    func showAout() {
        showOverlay(imageSrc: "aout")
    }
    
    func showBobo() {
        showOverlay(imageSrc: "bobo")
    }
    
    func showDroit() {
        showOverlay(imageSrc: "droit de bouchon")
    }
    
    func showEpicerie() {
        showOverlay(imageSrc: "epicerie")
    }
    
    func showEvents() {
        showOverlay(imageSrc: "events")
    }
    
    func showGouter() {
        showOverlay(imageSrc: "le gouter")
    }
    
    func showFeu() {
        showOverlay(imageSrc: "feu rouge")
    }
    
    func showHumour() {
        showOverlay(imageSrc: "humor")
    }
    
    func showJardin() {
        showOverlay(imageSrc: "jardin")
    }
    
    func showMoins() {
        showOverlay(imageSrc: "moins de 26")
    }
    
    func showPourboire() {
        showOverlay(imageSrc: "pourboire")
    }
    
    func showMetro() {
        showOverlay(imageSrc: "metro")
    }
    
    func showPlanche() {
        showOverlay(imageSrc: "planche")
    }
    
    func showRive() {
        showOverlay(imageSrc: "rive")
    }
    
    func showQuartier() {
        showOverlay(imageSrc: "quartier")
    }
    
    func showQuais() {
        showOverlay(imageSrc: "quais")
    }
    
    func showVelib() {
        showOverlay(imageSrc: "velib")
    }
    
    func showSoiree() {
        showOverlay(imageSrc: "soiree")
    }
    
    func showTerasse() {
        showOverlay(imageSrc: "terrasse")
    }
    
    func showSoldes() {
        showOverlay(imageSrc: "soldes")
    }
    
    func showPicknick() {
        showOverlay(imageSrc: "piqueniques")
    }
    
    func showVerre() {
        showOverlay(imageSrc: "premier verre")
    }
    
    func showOverlay(imageSrc: String) {
        overlayImage.image = UIImage(named: imageSrc)
        overlayImage.isHidden = false
        toggleButtons()
        animateOverlay(opacity: 1.0)

    }
    
    func animateOverlay(opacity: Float) {
        UIView.animate(withDuration: 0.2, delay: 0.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.overlayImage.alpha = CGFloat(opacity)
            self.closeButton.isHidden = !self.closeButton.isHidden
        }, completion: nil)
    }
    
    func toggleButtons() {
        for button in buttons {
            button.isEnabled = !button.isEnabled
        }
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
