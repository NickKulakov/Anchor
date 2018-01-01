//
//  ViewController.swift
//  Anchors
//
//  Created by Peter on 12/17/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.green
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(button)
        setupView1()
        setupView2()
        setupButton()
    }
    
    func setupView1(){
//        view1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setupView2(){
//        view2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setupButton() {
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        button.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

