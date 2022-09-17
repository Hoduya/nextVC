//
//  myViewController.swift
//  nextVC
//
//  Created by HoJun on 2022/09/17.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someString
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
