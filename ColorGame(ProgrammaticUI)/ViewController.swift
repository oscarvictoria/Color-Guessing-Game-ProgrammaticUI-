//
//  ViewController.swift
//  ColorGame(ProgrammaticUI)
//
//  Created by Oscar Victoria Gonzalez  on 1/28/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        mainView.greenButton.addTarget(self, action: #selector(changeColor(sender:)) , for: .touchUpInside)
        mainView.redButton.addTarget(self, action: #selector(changeRed(sender:)) , for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(changeBlue(sender:)) , for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(reset(sender:)) , for: .touchUpInside)
    }
    
    private func getRandomColor() {
        
    }
    

    @objc
       private func changeColor(sender: UIButton) {
        mainView.randomColorView.backgroundColor = mainView.greenButton.backgroundColor
       }
    
    @objc
    private func changeRed(sender: UIButton) {
        mainView.randomColorView.backgroundColor = mainView.redButton.backgroundColor
    }
    
    @objc
    private func changeBlue(sender: UIButton) {
        mainView.randomColorView.backgroundColor = mainView.blueButton.backgroundColor
    }
    
    @objc
    private func reset(sender: UIButton) {
        mainView.randomColorView.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    }

}

