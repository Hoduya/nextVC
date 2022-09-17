//
//  FirstViewController.swift
//  nextVC
//
//  Created by HoJun on 2022/09/17.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "FirstViewController"
        label.font = UIFont.systemFont(ofSize: 22)
        
        return label
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    // 일반적으로 데이터를 받을때 옵셔널로 선언, 안하면 기본값 설정해주거나 생성자를 만들어야 하기 때문에
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        makeAutoLayout()
    }
    
    func setUp() {
        view.backgroundColor = .white
        view.addSubview(backButton)
        view.addSubview(mainLabel)
        
        mainLabel.text = someString
    }
    
    func makeAutoLayout() {
        // 레이블 오토레이아웃
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // 버튼 오토레이아웃
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}
