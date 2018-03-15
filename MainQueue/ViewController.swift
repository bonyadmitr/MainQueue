//
//  ViewController.swift
//  MainQueue
//
//  Created by Bondar Yaroslav on 3/15/18.
//  Copyright © 2018 Bondar Yaroslav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.toBackground {
            DispatchQueue.delay(time: 2) {
                DispatchQueue.toMain {
                    UIView.animate(withDuration: 0.3) {
                        self.view.backgroundColor = UIColor.blue
                    }
                }
            }
        }
        
    }
}
