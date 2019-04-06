//
//  SlideUpMenuViewController.swift
//  keboen-course
//
//  Created by riyo maulana on 06/04/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import Foundation
import UIKit

class SlideUpMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapView)))
    }
    
    @objc func didTapView(){
        dismiss(animated: true, completion: nil)
    }
    
    
}
