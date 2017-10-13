//
//  QuarterOverViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 11.05.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class QuarterOverViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    var urlWOSound:String?

    @IBAction func categoryBtn(_ sender: UIButton) {
        goBack(identifier: "toCategory")
    }
    
    @IBAction func mapBtn(_ sender: UIButton) {
        goBack(identifier: "toMapFromCategory")
    }
    
    @IBOutlet weak var quarterTitle: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        quarterTitle.image = UIImage(named: appDelegate.currentQuarter.getName())
        urlWOSound = Bundle.main.path(forResource: appDelegate.currentQuarter.getVideoURLWithoutSound(), ofType: "mp4")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showPreviewVideo()
        if appDelegate.categoryViewFirstUse {
            let alert = UIAlertController(title: "Salut", message: Strings().quarterOverviewMessage, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "D'accord", style: UIAlertActionStyle.default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            appDelegate.wasUsedBefore(view: "category")
        }
    }
    
    func showPreviewVideo() {
        let realURL = URL(fileURLWithPath: urlWOSound!)
        let player = AVPlayer(url: realURL)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(x: self.quarterTitle.frame.width*0.05, y: -self.quarterTitle.frame.width*0.145, width: self.quarterTitle.frame.width*0.927, height: self.quarterTitle.frame.height*0.927)
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: nil, using: { (_) in
            DispatchQueue.main.async {
                player.seek(to: kCMTimeZero)
                player.play()
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func goBack(identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    
    //These two functions handle the custom navigation segues
    @IBAction func prepareForUnwindtoQuarterOverview (segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindLeftRightTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }
}
