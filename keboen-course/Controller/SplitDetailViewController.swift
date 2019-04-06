//
//  SplitViewDetailViewController.swift
//  keboen-course
//
//  Created by riyo maulana on 06/04/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import Foundation
import UIKit

class SplitDetailViewController: UIViewController {
    var detail: String?
    @IBOutlet weak var labelDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDetail.text = detail ?? "no detail defined"
    }
    
}
