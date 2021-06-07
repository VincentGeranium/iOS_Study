//
//  TabBarViewController.swift
//  NavigationAndModal
//
//  Created by 김광준 on 2021/06/07.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        // Do any additional setup after loading the view.
    }
    

    private func setupControllers() {
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        
        let nav1 = UINavigationController(rootViewController: firstVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Navigation", image: UIImage(systemName: "square.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Modal", image: UIImage(systemName: "square.slash"), tag: 2)
        
        setViewControllers([nav1, nav2], animated: false)
    }
    
    

}
