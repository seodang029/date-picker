//
//  ViewController.swift
//  DP
//
//  Created by D7703_22 on 2018. 4. 12..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DP: UIDatePicker!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lbl.text  = formatter.string(from: DP.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
        }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lbl2.text = formatter.string(from: date)
        
        if lbl2.text == lbl.text {
            view.backgroundColor = UIColor.red
        }
        
    }
    @IBAction func CDP(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lbl.text = formatter.string(from: DP.date)
    
    }
    @IBAction func stop(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    

    }

