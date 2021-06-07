//
//  ViewController.swift
//  NavigationAndModal
//
//  Created by 김광준 on 2021/06/07.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let label: UILabel = {
        let label: UILabel = UILabel()
        label.backgroundColor = .secondaryLabel
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = "First ViewController"
        return label 
    }()
    
    private let button: UIButton = {
        let button: UIButton = UIButton()
        button.backgroundColor = .secondaryLabel
        button.clipsToBounds = true
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
        button.setTitle("Push", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemTeal
        self.view.addSubview(label)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(didTapPushButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let y = view.safeAreaInsets.top + 10
        
        label.frame = CGRect(
            x: 10,
            y: y,
            width: view.frame.size.width - 20,
            height: view.frame.size.width / 5
        )
        
        button.frame = CGRect(
            x: (view.frame.size.width - (view.frame.size.width / 2)) + (view.frame.size.width / 4),
            y: label.frame.origin.y + label.frame.size.height,
            width: view.frame.size.width / 4,
            height: view.frame.size.width / 5
        )
    }
    
    @objc func didTapPushButton() {
        let vc = ChildViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


}

