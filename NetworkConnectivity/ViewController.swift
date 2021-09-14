//
//  ViewController.swift
//  NetworkConnectivity
//
//  Created by Apple on 23/06/2021 .
//

import UIKit
import Network

class ViewController: UIViewController {

    var network : NetworkConnectivityController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.network?.networkMonitor()
    }

    
 

}

