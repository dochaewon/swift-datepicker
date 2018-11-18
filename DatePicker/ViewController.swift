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
    
    @objc func updateTime() { //objc 는 스위프트와 오브젝트씨에서도 사용할수있다는 의미.
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
        
        var name = [String]() //빈배열 배열크기 지정안함
        name.append("winnie") //name[0]
        name.append("jun")    //name[1]
        name.append("maru")   //name[2]
        name.append("hero")   //name[3]
        
        print("my name is \(name[1])")
        
        let someoneName = name[2]
        
        print(someoneName)
        
        // 배열표현식 아래는 다 같은 표현임.
        var number = [1,2,3,4]
        var number1 : [Int] = [1,2,3,4]
        var number2 : Array<Int> = [1,2,3,4]
        var number3 = Array<Int>(1...4)
        
        print(number[0])
        print(number1[0])
        print(number2[0])
        print(number3[0])
        
        //타입을 애니로 주면 여러 타입을 같이 저장가능
        var array : [Any] = [1,2,"AA","BB"]
        print(array[0])
        print(array[1])
        print(array[2])
        print(array[3])
        
        var testVal = [Int](repeating:0, count:3)
        var testVal1 = [String](repeating:"A", count:3)
        print(testVal[1])//0
        testVal[1] = 3
        print(testVal[1])//3
        
        var numVal : Array<Int> = [1,2,3,4]
        print(numVal[0])
        print(numVal[1])
        print(numVal[2])
        print(numVal[3])
        numVal.append(5) //배열크기확장
        print(numVal[4])
        numVal.append(contentsOf: stride(from:6,through:10,by:1))
        print(numVal[5])
    }
}

