//
//  StringExtension.swift
//  字符串扩展类
//
//  Created by TERMINUS-JH on 2023/1/6.
//

import Foundation

extension String{
    func isPhone() -> Bool{
        return NSPredicate(format: "SELF MATCHES %@", REG_PHONE).evaluate(with:self)
    }
}

/// 手机号校验规则
let REG_PHONE = "1[34578]([0-9]){9}"
