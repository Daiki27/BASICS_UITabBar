//
//  ViewController.swift
//  BASICS_UITabBar
//
//  Created by 樋口大樹 on 2021/04/03.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "ToDo", image: UIImage(named: "checkmark.seal.fill")!, tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "calender", image: UIImage(named: "calendar")!, tag: 0)
        viewControllers = [firstViewController, secondViewController]
        
        let tabBarHeight = tabBar.frame.size.height
        print(tabBarHeight)
    }
}

class CustomTabBar: UITabBar {

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 150
        return sizeThatFits;
    }

}

