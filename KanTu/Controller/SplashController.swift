//
//  SplashController.swift
//  启动页
//
//  Created by TERMINUS-JH on 2023/1/5.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("SplashController viewDidLoad")
        
        /// 延时后执行
        DispatchQueue.main.asyncAfter(wallDeadline: .now()+1) {
            SceneDelegate.shared.next()
        }
    }
       
}
