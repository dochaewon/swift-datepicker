//
//  ViewController.swift
//  DatePicker
//
//  Created by 402-27 on 2018. 11. 18..
//  Copyright © 2018년 402-27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo:nil, repeats:true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblPickerTime.text = "선택시간:" + formatter.string(from:datePickerView.date)
    }
    
    @objc func updateTime() {
        //lblCurrentTime.text = String(count)
        //count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간:" + formatter.string(from: date as Date)
    }
    
    @IBAction func btnAction(_ sender: UIButton) {//배열
        arrayTest()
        
    }
    func arrayTest(){
        var name1: String
        name1 = "winnie"
        print("my name is \(name1)")
        
        var name = [String]()
        name.append("winnie") //name[0]
        name.append("jun")    //name[1]
        name.append("maru")   //name[2]
        name.append("hero")   //name[3]
        
        print("my name is \(name[1])")
        
        let someoneName = name[2]
        
        print(someoneName)
        
    }
}

