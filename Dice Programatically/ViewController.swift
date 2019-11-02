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
    
    func setupViews() {
        
        view.addSubview(backgroundImageView)
        backgroundImageView.image = UIImage(named: "background")
    }
    
    func setupConstraints() {
        let layoutGide = view.safeAreaLayoutGuide
        
        backgroundImageView.topAnchor.constraint(equalTo: layoutGide.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: layoutGide.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: layoutGide.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: layoutGide.bottomAnchor).isActive = true
    }

}

