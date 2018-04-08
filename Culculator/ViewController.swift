//
//  ViewController.swift
//  Culculator
//
//  Created by 直井翔汰 on 2018/04/08.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

enum OperatorTag: Int {
    case plus = 0
    case minus = 1
    case multiple = 2
    case devide = 3
    case qual = 4
}

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func operatorButton(_ sender: UIButton) {
        switch OperatorTag(rawValue: sender.tag) {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
    }

}

