//
//  SecondViewController.swift
//  PhoneBook
//
//  Created by YB on 05/12/19.
//  Copyright © 2019 YB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn5: UIButton!
    @IBOutlet var btn6: UIButton!
    @IBOutlet var btn7: UIButton!
    @IBOutlet var btn8: UIButton!
    @IBOutlet var btn9: UIButton!
    @IBOutlet var btn10: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        btn1.cornerRadius = btn1.frame.size.height / 2
        btn2.cornerRadius = btn2.frame.size.height / 2
        btn3.cornerRadius = btn3.frame.size.height / 2
        btn4.cornerRadius = btn4.frame.size.height / 2
        btn5.cornerRadius = btn5.frame.size.height / 2
        btn6.cornerRadius = btn6.frame.size.height / 2
        btn7.cornerRadius = btn7.frame.size.height / 2
        btn8.cornerRadius = btn8.frame.size.height / 2
        btn9.cornerRadius = btn9.frame.size.height / 2
        btn10.cornerRadius = btn10.frame.size.height / 2
    }
}
