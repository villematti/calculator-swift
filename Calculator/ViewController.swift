//
//  ViewController.swift
//  Calculator
//
//  Created by Ville-Matti Hakanpää on 17.5.2020.
//  Copyright © 2020 Ville-Matti Hakanpää. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var holder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupNumberPad()
    }
    
    private func setupNumberPad() {
        let buttonSize: CGFloat = view.frame.size.width / 4
        
        let zeroButton = UIButton(frame: CGRect(x: 0, y: holder.frame.height - buttonSize, width: buttonSize * 3, height: buttonSize))
        
        zeroButton.setTitleColor(.black, for: .normal)
        zeroButton.backgroundColor = .white
        zeroButton.setTitle("0", for: .normal)
        holder.addSubview(zeroButton)
        
        for x in 0..<3 {
            let button1 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 2), width: buttonSize, height: buttonSize))
            
            button1.setTitleColor(.black, for: .normal)
            button1.backgroundColor = .white
            button1.setTitle("\(x+1)", for: .normal)
            holder.addSubview(button1)
        }
        
        for x in 0..<3 {
            let button2 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 3), width: buttonSize, height: buttonSize))
            
            button2.setTitleColor(.black, for: .normal)
            button2.backgroundColor = .white
            button2.setTitle("\(x+4)", for: .normal)
            holder.addSubview(button2)
        }
        
        for x in 0..<3 {
            let button3 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 4), width: buttonSize, height: buttonSize))
            
            button3.setTitleColor(.black, for: .normal)
            button3.backgroundColor = .white
            button3.setTitle("\(x+7)", for: .normal)
            holder.addSubview(button3)
        }
    }


}

