//
//  PerferenceUtil.swift
//  偏好工具类
//
//  Created by TERMINUS-JH on 2023/1/6.
//

import Foundation

class PerferenceUtil{
    /// 保存登录状态
    static func setLoginState(_ state:Bool){
        UserDefaults.standard.set(state, forKey: KEY_USER_LOGIN)
    }
    
    /// 当前是否登录
    static func isLogin() -> Bool{
        return UserDefaults.standard.bool(forKey: KEY_USER_LOGIN)
    }
    
    private static let KEY_USER_LOGIN = "KEY_USER_LOGIN"
}
