//
//  ViewController.swift
//  Dice Programatically
//
//  Created by Darko Kulakov on 2019-11-02.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        
    }

    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var diceOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.alpha = 1
        return imageView
    }()
    
    lazy var diceTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.alpha = 1
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.alpha = 1
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 24)
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()
    
    func setupViews() {
        
        view.addSubview(backgroundImageView)
        backgroundImageView.image = UIImage(named: "background")
        
        backgroundImageView.addSubview(stackView)
        stackView.addArrangedSubview(diceOneImageView)
        diceOneImageView.image = UIImage(named: "Dice1")
        stackView.addArrangedSubview(diceTwoImageView)
        diceTwoImageView.image = UIImage(named: "Dice2")
        stackView.addArrangedSubview(button)
        
       

    }
    
    func setupConstraints() {
        let layoutGide = view.safeAreaLayoutGuide
        
        backgroundImageView.topAnchor.constraint(equalTo: layoutGide.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: layoutGide.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: layoutGide.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: layoutGide.bottomAnchor).isActive = true
        
        stackView.leadingAnchor.constraint(greaterThanOrEqualTo: backgroundImageView.leadingAnchor, constant: 20).isActive = true
        stackView.topAnchor.constraint(greaterThanOrEqualTo: backgroundImageView.topAnchor, constant: 20).isActive = true
        backgroundImageView.trailingAnchor.constraint(greaterThanOrEqualTo: stackView.trailingAnchor, constant: 20).isActive = true
        backgroundImageView.bottomAnchor.constraint(greaterThanOrEqualTo: stackView.bottomAnchor, constant: 20).isActive = true
        stackView.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: backgroundImageView.centerYAnchor).isActive = true
        
        
    }

    @objc func buttonAction(sender: UIButton!) {
             print("Button Clicked")
        }
    
}

