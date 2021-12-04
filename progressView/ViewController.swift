//
//  ViewController.swift
//  progressView
//
//  Created by ihlas on 4.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = Timer()
    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressView.progress = 2.0
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        var progress: Float = 0.0
        progressView.progress = progress
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block:{(timer) in //zaman aralığı
            progress += 0.001 //ilerlemek
            self.progressView.progress = progress
            if self.progressView.progress == 2.0
            {
                self.progressView.progress = 2.0
            }
            
        })
    }
    
}

