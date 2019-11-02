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
        return imageView
    }()
    
    lazy var diceTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 8
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
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 24)
       

    }
    
    func setupConstraints() {
        let layoutGide = view.safeAreaLayoutGuide
        
        backgroundImageView.topAnchor.constraint(equalTo: layoutGide.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: layoutGide.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: layoutGide.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: layoutGide.bottomAnchor).isActive = true
        
        stackView.leadingAnchor.constraint(equalTo: backgroundImageView.leadingAnchor,constant: 128).isActive = true
        stackView.topAnchor.constraint(equalTo: backgroundImageView.topAnchor, constant: 128).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 128).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 128).isActive = true
        stackView.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: backgroundImageView.centerYAnchor).isActive = true
        
//        diceOneImageView.heightAnchor.constraint(equalToConstant: view.frame.height/5).isActive = true
//        diceTwoImageView.heightAnchor.constraint(equalToConstant: view.frame.height/5).isActive = true
//        diceOneImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8).isActive = true
//        diceOneImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 8).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: diceOneImageView.trailingAnchor, constant: 8).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: diceOneImageView.bottomAnchor, constant: 8).isActive = true
//
//        diceTwoImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8).isActive = true
//        diceTwoImageView.topAnchor.constraint(equalTo: diceOneImageView.topAnchor, constant: 8).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: diceTwoImageView.trailingAnchor, constant: 8).isActive = true
//        button.bottomAnchor.constraint(equalTo: diceTwoImageView.bottomAnchor, constant: 8).isActive = true
//
//        button.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8).isActive = true
////        button.topAnchor.constraint(equalTo: diceTwoImageView.topAnchor, constant: 8).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: 8).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 8).isActive = true
//
    }

}

