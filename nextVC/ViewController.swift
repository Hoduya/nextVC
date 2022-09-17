//
//  ViewController.swift
//  nextVC
//
//  Created by HoJun on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 코드로 화면 이동 (다음 화면이 코드로 작성되어있을때 가능)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        
        firstVC.someString = "From ViewController"
        
        // 전체 화면으로 띄우기
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
    }
    
    // 코드로 스토리보드 객체를 생성해서 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        secondVC.someString = "From ViewController"
        present(secondVC, animated: true, completion: nil)
    }
    
    // 스토리보드에서의 화면 이동 (간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        
        // 내부적으로 prepare 함수를 호출한다.
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
    }
    
    // 세그웨이를 통한 데이터 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController
            
            thirdVC.someString = "From ViewController"
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            
            fourthVC.someString = "From ViewController"
        }
    }
    
    // 세그웨이를 실행할 조건 설정 가능
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
}

