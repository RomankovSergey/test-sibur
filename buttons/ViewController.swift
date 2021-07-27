//
//  ViewController.swift
//  buttons
//
//  Created by Diana on 01.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
          button.backgroundColor = .green
          button.setTitle("Test Button", for: .normal)
          button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

          self.view.addSubview(button)
        
        let secondButton = UIButton(frame: CGRect(x: 75, y: 200, width: 150, height: 50))
            secondButton.backgroundColor = .blue
            secondButton.setTitle("Test Button 2", for: .normal)
            secondButton.addTarget(self, action: #selector(secondButtonAction), for: .touchUpInside)

        self.view.addSubview(secondButton)
        }

        @objc func buttonAction(sender: UIButton!) {
          print("Кнопка нажата")
        
            }

            @objc func secondButtonAction(sender: UIButton!) {
                let vc = NewViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
    
        // Do any additional setup after loading the view.
    }


