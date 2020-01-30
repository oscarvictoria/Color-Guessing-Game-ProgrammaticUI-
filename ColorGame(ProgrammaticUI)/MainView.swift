//
//  MainView.swift
//  ColorGame(ProgrammaticUI)
//
//  Created by Oscar Victoria Gonzalez  on 1/28/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var stackView: UIStackView = {
        let stack = UIStackView()
        
        return stack
    }()
    
    public lazy var greenButton: UIButton = {
        let green = UIButton()
        green.tag = 2
        green.backgroundColor = .systemGreen
        green.isEnabled = true
        return green
    }()
    
    public lazy var blueButton: UIButton = {
        let blue = UIButton()
        blue.tag = 1
        blue.backgroundColor = .systemBlue
        blue.isEnabled = true
        return blue
    }()
    
    public lazy var redButton: UIButton = {
        let red = UIButton()
        red.tag = 0
        red.backgroundColor = .systemRed
        red.isEnabled = true
        return red
    }()
    
        public lazy var statusLabel: UILabel = {
            let label = UILabel()
            label.text = "Correct"
            label.font = UIFont.systemFont(ofSize: 30, weight: .regular)
            label.backgroundColor = .systemYellow
            label.textAlignment = .center
    //        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
            return label
        }()
    
    public lazy var randomColorView: UIView = {
        let view = UIView()
        return view
    }()
    
    public lazy var resetButton: UIButton = {
        let reset = UIButton()
        reset.setTitle("New Game", for: .normal)
        reset.setTitleColor(.blue, for: .normal)
        reset.titleLabel!.font = UIFont(name: "Times New Roman", size: 50)!
        return reset
    }()
    
    
    override init(frame: CGRect) {
         super.init(frame: UIScreen.main.bounds)
         commonInit()
     }
    
    required init?(coder: NSCoder) {
           super.init(coder: coder)
           commonInit()
       }
    
    private func commonInit() {
        setupRandomColorView()
        setUpLabel()
        setupStackView()
        setupReset()
    }
    
    private func setupRandomColorView() {
        addSubview(randomColorView)
        randomColorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            randomColorView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            // set paddig at the leading edge of the Main
            randomColorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            // set padding at the trailing edge of the MainView
            randomColorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            randomColorView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4)
        ])
    }
    
    private func setupStackView() {
   
        addSubview(stackView)
        stackView.addArrangedSubview(redButton)
        stackView.addArrangedSubview(blueButton)
        stackView.addArrangedSubview(greenButton)
        
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 24.0
        
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    private func setupReset() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resetButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setUpLabel() {
        addSubview(statusLabel)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            statusLabel.topAnchor.constraint(equalTo: randomColorView.bottomAnchor, constant: 30),
            statusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            statusLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
}
