//
//  NetworkConnectivityController.swift
//  NetworkConnectivity
//
//  Created by Apple on 23/06/2021 .
//

import UIKit
import Network

class NetworkConnectivityController: UIViewController {

    @IBOutlet weak var connectionLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        networkMonitor()
        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        networkMonitor()
//    }
    
    func networkMonitor () {
        
        
        let monitor = NWPathMonitor()
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
              
                DispatchQueue.main.async {
                    self.connectionLbl.text = "Connected"
                 self.view.backgroundColor = .green
                   
                   
                }
                
                
            } else {
               
               
                DispatchQueue.main.async {
                    self.connectionLbl.text = "Not Connected"
                    self.view.backgroundColor = .red
                    
                }
            }
        }
        
        let queue = DispatchQueue(label: "Network")
        monitor.start(queue: queue)
    }

}
