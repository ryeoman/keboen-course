//
//  ViewController.swift
//  keboen-course
//
//  Created by riyo maulana on 30/03/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Do something before segue performed
        if segue.identifier == "ShowModalSegues" {
            let destination = segue.destination as! SlideUpMenuViewController
            destination.modalPresentationStyle = .overCurrentContext
        }
    }
    
    @IBAction func didTapShowPopup(_ sender: Any) {
        performSegue(withIdentifier: "ShowPopupSegues", sender: nil)
    }
    
    @IBAction func didTapShowModal(_ sender: Any) {
        performSegue(withIdentifier: "ShowModalSegues", sender: nil)
    }
}

