//
//  CustomSegue.swift
//  keboen-course
//
//  Created by riyo maulana on 06/04/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import UIKit

class CustomScaleSegue: UIStoryboardSegue {
    override func perform() {
        scale()
    }
    
    func scale(){
        let toViewController = self.destination
        let fromViewController = self.source
        
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        toViewController.view.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        toViewController.view.center = originalCenter
        
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewController.view.transform = CGAffineTransform.identity
        }, completion: { (success) in
            fromViewController.present( toViewController, animated: false, completion: nil)
        })
    }
}

class UnwindCustomScaleSegue: UIStoryboardSegue {
    override func perform() {
        scale()
    }
    
    func scale(){
        let toViewController = self.destination
        let fromViewController = self.source
        
       fromViewController.view.superview?.insertSubview(toViewController.view, at: 0)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewController.view.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }, completion: { (success) in
            fromViewController.dismiss(animated: false, completion: nil)
        })
    }
}
