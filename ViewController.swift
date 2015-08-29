//
//  ViewController.swift
//  calculator
//
//  Created by Tarun khandelwal on 26/08/15.
//  Copyright (c) 2015 Tarun khandelwal. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    var result=0
    var b: Int=0
    var c: Double=0
    var j=0
    var i=0
    var a=0
    var d=0.0
    var e=0.0
    var res=0.0
    var buttonBeep = AVAudioPlayer()
    var secondBeep = AVAudioPlayer()
    var f=1.0
    @IBAction func buttonPressed1()  {
        c=1
        arr()
        i=0
        buttonBeep.play()
        }
    @IBAction func buttonPressed2()  {
        c=2
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed3()  {
        c=3
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed4()  {
        c=4
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed5()  {
        c=5
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed6()  {
        c=6
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed7()  {
        c=7
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed8()  {
        c=8
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed9()  {
        c=9
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressed0()  {
        c=0
        i=0
        arr()
        buttonBeep.play()
    }
    @IBAction func buttonPressedpoint()  {
        a=1
        buttonBeep.play()
    }
    @IBAction func buttonPressedadd()  {
        b=1
        j++
        a=0
        f=1.0
        secondBeep.play()
        if(i==1){
            d=res
        }
        resultLabel.text="\(d)+"
    }
    @IBAction func buttonPressedsub()  {
        b=2
        j++
        a=0
        f=1.0
        secondBeep.play()
        if(i==1){
            d=res
        }
        resultLabel.text="\(d)-"
    }
    @IBAction func buttonPressedmul()  {
        b=3
        j++
        a=0
        f=1.0
        secondBeep.play()
        if(i==1){
            d=res
        }
        resultLabel.text="\(d)*"
    }
    @IBAction func buttonPresseddiv()  {
        b=4
        j++
        a=0
        f=1.0
        secondBeep.play()
        if(i==1){
            d=res
        }
        resultLabel.text="\(d)/"
    }
    @IBAction func buttonPressedequal()  {
        secondBeep.play()
        if(b==1){
            add()
        }
        else if(b==2){
            sub()
        }
        else if(b==3){
            mul()
        }
        else{
            div()
        }
        resultLabel.text="\(res)"
        d=0.0
        e=0.0
        c=0.0
        i=1
        j=0
        f=1.0
        a=0
    }
    func calc(){
        
    }
    func arr(){
        if(j==0){
            if(a==0){
                d=d*10+c}
            else if(a==1){
                d=d+c/pow(10.0,f)
                f++
            }
            resultLabel.text="\(d)"
        }
        else if(j==1){
            if(a==0){
                e=e*10+c}
            else if(a==1){
                e=e+c/pow(10,f)
                f++
            }
            if(b==1){
                resultLabel.text="\(d)+\(e)"
            }
            else if(b==2){
                resultLabel.text="\(d)-\(e)"
            }
            else if(b==3){
                resultLabel.text="\(d)*\(e)"
            }
            else{
                resultLabel.text="\(d)/\(e)"
            }
        }
    }
    func add(){
        res = d+e
    }
    func sub() {
        res=d-e
    }
    func mul(){
        res=d*e
    }
    func div(){
        res=d/e
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calc()
        buttonBeep = self.setupAudioPlayerWithFile("ButtonTap", type:"wav")
        secondBeep = self.setupAudioPlayerWithFile("SecondBeep", type:"wav")
        resultLabel.backgroundColor = UIColor(patternImage: UIImage(named: "field_time.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
        //1
        var path = NSBundle.mainBundle().pathForResource(file as String, ofType:type as String)
        var url = NSURL.fileURLWithPath(path!)
        
        //2
        var error: NSError?
        
        //3
        var audioPlayer:AVAudioPlayer?
        audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        
        //4
        return audioPlayer!
    }
}

