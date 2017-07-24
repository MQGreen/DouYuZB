//
//  MainViewController.swift
//  DouYuZB
//
//  Created by 小马 on 2017/7/24.
//  Copyright © 2017年 maqi. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubVC(StoryboardName: "Home")
        addSubVC(StoryboardName: "Live")
        addSubVC(StoryboardName: "Follow")
        addSubVC(StoryboardName: "Discover")
        addSubVC(StoryboardName: "Profile")
    }

    private func addSubVC (StoryboardName : String) {
        //1、通过storyboard 创建控制器
        let vc = UIStoryboard(name: StoryboardName, bundle: nil).instantiateInitialViewController()!
        //2、 把vc作为子控制器
        addChildViewController(vc)
    }
}
