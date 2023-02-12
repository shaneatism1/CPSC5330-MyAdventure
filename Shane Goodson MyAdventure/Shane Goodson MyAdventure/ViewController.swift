//
//  ViewController.swift
//  Shane Goodson MyAdventure
//
//  Created by user231162 on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    var level : Int = 1
    
    var first = FirstLevel()
    var second = SecondLevel()
    var third = ThirdLevel()
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var button2Text: UIButton!
    @IBOutlet weak var button1Text: UIButton!
    
    @IBAction func button1(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.FixEngines()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 2
        }
        else if (level == 2){
            display.text = third.BlackHole()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 1
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.FixO2()
            button1Text.setTitle("Enter BlackHole", for: .normal)
            button2Text.setTitle("Eject eject!!", for: .normal)
            level += 1
        }
        else if (level == 2){
            display.text = third.Avoid()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = first.Start()
        button1Text.setTitle("fix engines", for: .normal)
        button2Text.setTitle("fix oxygen", for: .normal)
        
    }
}

class FirstLevel {
    func Start() -> String{
        return "you wake up on a space craft with low O2 and damaged engines what do you do"
    }
}

class SecondLevel {
    func FixEngines() -> String{
        return "Ran out of O2...game over"
    }
    func FixO2() -> String{
        return "Now kareeming towards black hole...what do you do?"
    }
}

class ThirdLevel {
    func BlackHole() -> String{
        return "you are now inside a tesseract...you won"
    }
    func Avoid() -> String{
        return "you ejected into space and are doomed...game over"
    }
}

