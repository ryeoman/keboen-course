//
//  TwoViewController.swift
//  keboen-course
//
//  Created by riyo maulana on 06/04/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import Foundation
import UIKit

class TwoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "UnwindCustomScaleSegue", sender: nil)
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        let segue = UnwindCustomScaleSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }}
