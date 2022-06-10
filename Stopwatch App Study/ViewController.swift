//
//  ViewController.swift
//  Stopwatch App Study
//
//  Created by Ömer Faruk Kılıçaslan on 10.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 0

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func startButton(_ sender: Any) {
        
        timeLabel.text = String(time)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerApp), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 0
        timeLabel.text = String(time)
        timer.invalidate()
    }
    
    @objc func timerApp() {
        timeLabel.text = String(time)
        time += 1
    }
}

