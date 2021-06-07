//
//  ChildViewController.swift
//  NavigationAndModal
//
//  Created by 김광준 on 2021/06/07.
//

import UIKit

class ChildViewController: UIViewController {
    
    private let label: UILabel = {
        let label: UILabel = UILabel()
        label.backgroundColor = .secondaryLabel
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = "Child ViewController"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .secondarySystemBackground
        self.view.addSubview(label)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let y = view.safeAreaInsets.top + 10
        label.frame = CGRect(x: 10, y: y, width: view.frame.size.width - 20, height: view.frame.size.width / 5)
    }



}
