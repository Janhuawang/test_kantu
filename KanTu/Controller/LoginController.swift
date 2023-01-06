//
//  LoginController.swift
//  登录页
//
//  Created by TERMINUS-JH on 2023/1/5.
//

import UIKit

class LoginController: UIViewController {
    
    /// 账号
    @IBOutlet weak var ftAccount: UITextField!
    /// 密码
    @IBOutlet weak var tfPassword: UITextField!
    /// 错误提示
    @IBOutlet weak var errorLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    /// 登录事件
    /// - Parameter sender: <#sender description#>
    @IBAction func onClickToLogin(_ sender: UIButton) {
        let acceount = ftAccount.text!
        if acceount.isEmpty {
            errorLable.text = "请填写手机号"
            return
        }
        if !acceount.isPhone(){
            errorLable.text = "手机号格式有问题"
            return
        }
        
        let password = tfPassword.text!
        if password.isEmpty {
            errorLable.text = "请输入密码"
            return
        }
        if password.count < 5 || password.count > 15{
            errorLable.text = "密码格式有问题"
            return
        }
        
        if acceount != Constant.PHONE || password != Constant.PASSWORD{
            errorLable.text = "手机号或密码输入错误"
            return
        }
        
        SceneDelegate.shared.toHome()
                
    }
    
}
