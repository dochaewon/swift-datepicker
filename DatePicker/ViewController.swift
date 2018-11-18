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
    @IBAction func btn2(_ sender: Any) {
        testFlowControl()
    }
    
    //제어문 (조건문,반복문)
    //반복문에 대해서 보자..
    func testFlowControl(){
        /*for i in 1...10{ //1부터 10 까지 반복하는 for 문
            print(i)
        }*/
        /*for(int i; i<=10; i++){ //사용불가
            print(i)
        }*/
        //1부터 10미만을 출력하시오.
        for i in 1..<10 {
            print("1부터 10미만을 출력 \(i)")
        }
        print("--------------------")
        
        var i : Int = 0
        for _ in 1..<11{
            print(i)
            i+=1
        }
        print("--------------------")
        for _ in 1..<11{
            print(i)
            i-=1
        }
        print("--------------------")
        
        let names:[String]=["winniee","jun","maru","you"]
        for name in names {
            print(name)
        }
        print("--------------------")
        
        for i in 0..<names.count{
            print(names[i])
        }
        print("--------------------")
        
        for (index, name) in names.enumerated(){
            print("\(index) : \(name)")
        }
         print("--------------------")
        
        //2단을 출력하시오
        var a = 2
        for i in 1...9 {
            print("\(a)*\(i) = \(a * i)")
        }
        print("--------------------")
    }
    func arrayTest(){
        var name1: String
        name1 = "winnie"
        print("--------------------")
        print("my name is \(name1)")
        print("--------------------")
        
        var name = [String]() //빈배열 배열크기 지정안함
        name.append("winnie") //name[0]
        name.append("jun")    //name[1]
        name.append("maru")   //name[2]
        name.append("hero")   //name[3]
        
        print("my name is \(name[1])")
        print("--------------------")
        
        let someoneName = name[2]
        
        print("someoneName is \(someoneName)")
        
        print(someoneName)
        print("--------------------")
        
        // 배열표현식 아래는 다 같은 표현임.
        var number = [1,2,3,4]
        var number1 : [Int] = [1,2,3,4]
        var number2 : Array<Int> = [1,2,3,4]
        var number3 = Array<Int>(1...4)
        
        print(number[0])
        print(number1[0])
        print(number2[0])
        print(number3[0])
        print("--------------------")
        
        //타입을 애니로 주면 여러 타입을 같이 저장가능
        var array : [Any] = [1,2,"AA","BB"]
        print(array[0])
        print(array[1])
        print(array[2])
        print(array[3])
        print("--------------------")
        
        var testVal = [Int](repeating:0, count:3)
        var testVal1 = [String](repeating:"A", count:3)
        print(testVal[1])//0
        testVal[1] = 3
        print(testVal[1])//3
        print("--------------------")
        var numVal : Array<Int> = [1,2,3,4]
        print(numVal[0])
        print(numVal[1])
        print(numVal[2])
        print(numVal[3])
        numVal.append(5) //배열크기확장
        print(numVal[4])
        numVal.append(contentsOf: stride(from:6,through:10,by:1))
        print(numVal[5])
        numVal.append(contentsOf: 11...20)
        
        print(numVal)//배열에 있는 모든 값 출력.
        print("--------------------")
    }
}

