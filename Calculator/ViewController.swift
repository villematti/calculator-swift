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
    
    var firstNumber = 0
    var resultNumber = 0
    
    var currentOperation: Operation?
    
    enum Operation {
        case add, subtract, multiply, divide
    }
    
    private var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont(name: "Helvetica", size: 100)
        label.accessibilityIdentifier = "resultLabel"
        return label
    }()

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
        zeroButton.tag = 1
        zeroButton.accessibilityIdentifier = "number0"
        zeroButton.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        holder.addSubview(zeroButton)
        
        for x in 0..<3 {
            let button1 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 2), width: buttonSize, height: buttonSize))
            
            button1.setTitleColor(.black, for: .normal)
            button1.backgroundColor = .white
            button1.setTitle("\(x+1)", for: .normal)
            button1.tag = x + 2
            button1.accessibilityIdentifier = "number\(x + 1)"
            button1.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
            holder.addSubview(button1)
        }
        
        for x in 0..<3 {
            let button2 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 3), width: buttonSize, height: buttonSize))
            
            button2.setTitleColor(.black, for: .normal)
            button2.backgroundColor = .white
            button2.setTitle("\(x+4)", for: .normal)
            button2.tag = x + 5
            button2.accessibilityIdentifier = "number\(x + 4)"
            button2.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
            holder.addSubview(button2)
        }
        
        for x in 0..<3 {
            let button3 = UIButton(frame: CGRect(x: buttonSize
                * CGFloat(x), y: holder.frame.height - (buttonSize * 4), width: buttonSize, height: buttonSize))
            
            button3.setTitleColor(.black, for: .normal)
            button3.backgroundColor = .white
            button3.setTitle("\(x+7)", for: .normal)
            button3.tag = x + 8
            button3.accessibilityIdentifier = "number\(x + 7)"
            button3.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
            holder.addSubview(button3)
        }
        
        let clearButton = UIButton(frame: CGRect(x: 0, y: holder.frame.height - (buttonSize * 5), width: view.frame.size.width - buttonSize, height: buttonSize))
        
        clearButton.setTitleColor(.black, for: .normal)
        clearButton.backgroundColor = .white
        clearButton.setTitle("Clear All", for: .normal)
        clearButton.accessibilityIdentifier = "clearButton"
        holder.addSubview(clearButton)
        
        let operations = ["=","+","-","x","/"]
        for x in 0..<5 {
            let button4 = UIButton(frame: CGRect(x: buttonSize * 3, y: holder.frame.height - (buttonSize * CGFloat(x + 1)), width: buttonSize, height: buttonSize))
            
            button4.setTitleColor(.white, for: .normal)
            button4.backgroundColor = .orange
            button4.setTitle(operations[x], for: .normal)
            button4.accessibilityIdentifier = "\(operations[x])operation"
            button4.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
            button4.tag = x + 1
            holder.addSubview(button4)
        }
        
        resultLabel.frame = CGRect(x: 20, y: clearButton.frame.origin.y - 110.0, width: view.frame.width - 40, height: 100)
        holder.addSubview(resultLabel)
        
        // Actions
        clearButton.addTarget(self, action: #selector(clearResults), for: .touchUpInside)
    }
    
    @objc func clearResults() {
        resultLabel.text = "0"
        currentOperation = nil
        firstNumber = 0
    }
    
    @objc func numberPressed(_ sender: UIButton) {
        let tag = sender.tag - 1
        
        if (resultLabel.text == "0") {
            resultLabel.text = "\(tag)"
        } else if let text = resultLabel.text {
            resultLabel.text = "\(text)\(tag)"
        }
    }
 
    @objc func operationPressed(_ sender: UIButton) {
        let tag = sender.tag
        
        if let text = resultLabel.text, let value = Int(text), firstNumber == 0 {
            firstNumber = value
            resultLabel.text = "0"
        }
        
        
        if (tag == 1) {
            if let operation = currentOperation {
                var secondNumber = 0
                if let text = resultLabel.text, let value = Int(text) {
                    secondNumber = value
                }
                switch operation {
                case .add:
                    let result = firstNumber + secondNumber
                    resultLabel.text = "\(result)"
                    firstNumber = 0
                    break
                case .subtract:
                    let result = firstNumber - secondNumber
                    resultLabel.text = "\(result)"
                    firstNumber = 0
                    break
                case .multiply:
                    let result = firstNumber * secondNumber
                    resultLabel.text = "\(result)"
                    firstNumber = 0
                    break
                case .divide:
                    let result = firstNumber / secondNumber
                    resultLabel.text = "\(result)"
                    firstNumber = 0
                    break
                }
            }
            
        } else if (tag == 2) {
            currentOperation = .add
            
        } else if (tag == 3) {
            currentOperation = .subtract
            
        } else if (tag == 4) {
            currentOperation = .multiply
            
        } else if (tag == 5) {
            currentOperation = .divide
        }
        
        
    }

}

