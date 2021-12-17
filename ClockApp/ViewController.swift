//
//  ViewController.swift
//  ClockApp
//
//  Created by Rai Gomes on 2021-11-18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    let formatter = DateFormatter()
    
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        formatter.timeStyle = .medium
        
        updateTimeLabel()
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
        
        
       /* Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true){
            timer in
            let date = Date()
            let timeString = self.formatter.string(from: date)
            
            
            self.timeLabel.text = timeString
        }*/
        
    }
    
    func updateTimeLabel(timer : Timer? = nil) {
        
        let date = Date()
        let timeString = formatter.string(from: date)
        
        
        timeLabel.text = timeString
    }
    
    deinit{
       /* if let timer = timer {
        timer.invalidate()
        }*/
        timer?.invalidate()
    }


}

// Version 0 Gör ej KOMMER KRACHA----KOMMER FÅ DÅLIGA REVIEW PÅ APPLESTORE
       
       /*let number = Int(numberString!)// ! E para garatir que nao e nill = NUll
       let bigNumber = number! + 4
       print(bigNumber)*/
       
   //Version 1
   /*if let numberString = numberString {
       if let number = Int(numberString) {
           let bigNumber = number + 4
           print(bigNumber)
       }
   }*/
       
        //Version 2
        /*if let numberString = numberString,
            let number = Int(numberString) {
           let bigNumber = number + 4
           print(bigNumber)
            }
         }*/
       
       //Version 3
       /*if let number = Int(numberString ?? "") {
           let bigNumber = number + 4
           print(bigNumber)
       
       }*/
       
       //Version 4
   
       /*guard let numberString = numberString else { return }
       guard let number = Int(numberString) else {return}
       
       let bigNumber = number + 4
       print(bigNumber)*/


