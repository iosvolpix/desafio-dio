//
//  ViewController.swift
//  Playground
//
//  Created by Angor Volpi Silva Rezende on 26/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    let name = "Steve"
    var lastName: String? = "Jobbs"
    
    var sendButtom = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(sendButtom)
        view.backgroundColor = .systemGray3
        sendAction()
        
        sendButtom.setTitle("Surname", for: .normal)
        sendButtom.setTitleColor(.blue, for: .normal)
        sendButtom.setTitleColor(.darkGray, for: .highlighted)
        sendButtom.layer.cornerRadius = 15
        sendButtom.backgroundColor = UIColor(red: 220/252, green: 220/252, blue: 220/252, alpha: 0.9)
        sendButtom.addTarget(self, action: #selector(sendAction), for: .touchUpInside)
        sendButtom.frame = CGRect(
            x: 90, y: 730, width: 200, height: 50
        )
    }
    @objc func sendAction() {
        print("\(name) \(lastName ?? "Wozniak")")
        if let unweappedLastName = lastName {
            print("\(name) \(unweappedLastName)")
        }
    }
}

