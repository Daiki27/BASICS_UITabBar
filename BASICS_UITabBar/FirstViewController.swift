//
//  FirstViewController.swift
//  BASICS_UITabBar
//
//  Created by 樋口大樹 on 2021/04/03.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(hex: "A57FA5")
        
        let viewWidth = Double(view.frame.size.width)
        let viewHeight = Double(view.frame.size.height)
        let topBarHeight = Double(200)
        let tableView = { () -> UITableView in
            //カメラからの画像を表示する領域.
            let tableView = UITableView()
            tableView.frame = CGRect( x:0, y:topBarHeight, width: viewWidth, height: viewHeight-topBarHeight-Double(49))
            tableView.contentMode = UIView.ContentMode.scaleAspectFit
            tableView.backgroundColor = UIColor(hex: "F4F4F4")
            return tableView
        }()
        view.addSubview(tableView)
    }


}
