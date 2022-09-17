//
//  ThirdViewController.swift
//  nextVC
//
//  Created by HoJun on 2022/09/17.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainLael: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLael.text = someString
    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}
