//
//  FourthViewController.swift
//  nextVC
//
//  Created by HoJun on 2022/09/17.
//

import UIKit

class FourthViewController: UIViewController {

    var someString: String?

    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someString
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
