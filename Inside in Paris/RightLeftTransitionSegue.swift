//
//  LeftRightTransitionSegue.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 11.05.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit

class RightLeftTransitionSegue: UIStoryboardSegue {
    
    let duration: Double = 0.25
    let delay: Double = 0.0
    let x: CGFloat = 0
    let y: CGFloat = 0
    
    override func perform()
    {
        let src = self.source as UIViewController
        let dst = self.destination as UIViewController
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: self.y)
        
        UIView.animate(withDuration: self.duration, delay: self.delay, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            dst.view.transform = CGAffineTransform(translationX: self.x, y: self.y)
        }, completion: { finished in
            src.present(dst, animated: false, completion: nil)
        })
    }
}

class UnwindRightLeftTransitionSegue: UIStoryboardSegue {
    
    let duration: Double = 0.25
    let delay: Double = 0.0
    let x: CGFloat = 0
    let y: CGFloat = 0

    override func perform()
    {
        let src = self.source as UIViewController
        let dst = self.destination as UIViewController
        
        src.view.superview?.insertSubview(dst.view, belowSubview: src.view)
        src.view.transform = CGAffineTransform(translationX: self.x, y: self.y)
        
        UIView.animate(withDuration: self.duration, delay: self.delay, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            src.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: self.y)
        }, completion: { finished in
            src.dismiss(animated: false, completion: nil)
        })
    }

}
