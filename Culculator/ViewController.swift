//
//  ViewController.swift
//  Culculator
//
//  Created by 直井翔汰 on 2018/04/08.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

enum OperatorTag: Int {
    case plus
    case minus
    case multiple
    case devide
    case notSelect
    
    init(rawValue: Int) {
        switch rawValue {
        case 0:
            self = .plus
        case 1:
            self = .minus
        case 2:
            self = .multiple
        case 3:
            self = .devide
        default:
            self = .notSelect
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    var operand: Int = 0
    var selectedOperator: OperatorTag = .notSelect
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberButtonAction(_ sender: UIButton) {
        if answerLabel.text == "" {
            answerLabel.text = String(Int(sender.titleLabel!.text!)!)
        } else {
            answerLabel.text = String(Int(answerLabel.text!)! * 10 + Int(sender.titleLabel!.text!)!)
        }
    }
    
    @IBAction func operatorButton(_ sender: UIButton) {
        
        if answerLabel.text == "" {
            return
        }
        
        operand = Int(answerLabel.text!)!
        
        selectedOperator = OperatorTag(rawValue: sender.tag)
        
        answerLabel.text = ""
    }
    
    @IBAction func equalButtonAction(_ sender: Any) {
        culculate()
    }
    
    func culculate() {
        switch selectedOperator {
        case .plus:
            self.answerLabel.text = String(Int(operand + Int(answerLabel.text!)!))
        case .minus:
            self.answerLabel.text = String(Int(operand - Int(answerLabel.text!)!))
        case .multiple:
            self.answerLabel.text = String(Int(operand * Int(answerLabel.text!)!))
        case .devide:
            self.answerLabel.text = String(Int(operand / Int(answerLabel.text!)!))
        case .notSelect:
            break;
        }
    }
}

