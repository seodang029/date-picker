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
            
            let myAlert = UIAlertController(title: "알림", message: "알림을 끄시겠습니까?", preferredStyle: .actionSheet)
            
            let okAction = UIAlertAction(title: "확인", style: .default) {
                (myAcotion: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.white
            }
            myAlert.addAction(okAction)
            present(myAlert, animated: true, completion: nil)
        }
        
    }
    @IBAction func CDP(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lbl.text = formatter.string(from: DP.date)
    
    }
    
}


