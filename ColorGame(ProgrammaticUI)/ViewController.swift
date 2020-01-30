//
//  ViewController.swift
//  ColorGame(ProgrammaticUI)
//
//  Created by Oscar Victoria Gonzalez  on 1/28/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = ColorGuessingModel()
    
    private var mainView = MainView()
    
    override func loadView() {
        view = mainView
        configureColor()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        configureColor()
    }
    
    func newGame() {
        mainView.randomColorView.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    }
    
    func configureColor() {
        mainView.resetButton.addTarget(self, action: #selector(reset(sender:)) , for: .touchUpInside)
         mainView.redButton.addTarget(self, action: #selector(buttonPressed(sender:)) , for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(buttonPressed(sender:)) , for: .touchUpInside)
         mainView.greenButton.addTarget(self, action: #selector(buttonPressed(sender:)) , for: .touchUpInside)
        
    }


    

    @objc
       private func buttonPressed(sender: UIButton) {
        
        let randNum =  CGFloat.random(in: 0...1)
        let randNum2 = CGFloat.random(in: 0...1)
        let randNum3 = CGFloat.random(in: 0...1)
        let randNum4 = CGFloat.random(in: 0...1)

        let myColor = UIColor(red: randNum, green: randNum2, blue: randNum3, alpha: randNum4)
        let array = [randNum, randNum2, randNum3]
        let mostColor = array.max()

        mainView.randomColorView.backgroundColor = myColor

            switch sender.tag {
            case 0:
                if mostColor == randNum  {
                    mainView.statusLabel.text = "Correct"
                } else {
                mainView.statusLabel.text = "Wrong"
                }
            case 1:
                if mostColor == randNum2 {
                    mainView.statusLabel.text = "Correct"
                } else {
                    mainView.statusLabel.text = "Wrong"
                }
            case 2:
                if mostColor == randNum3 {
                    mainView.statusLabel.text = "Correct"
                } else {
                    mainView.statusLabel.text = "Wrong"
                }
            default:
                mainView.statusLabel.text = "unknown"
            }
        
        
    
       }
    

    
    @objc
    private func reset(sender: UIButton) {
        mainView.randomColorView.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    }

}

