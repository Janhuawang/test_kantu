//
//  ImageDetailController.swift
//  图片详情页
//
//  Created by TERMINUS-JH on 2023/1/9.
//

import UIKit

class ImageDetailController: UIViewController {

    /// 用来接受参数
    var id:String!
    
    @IBOutlet weak var detailImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置导航标题栏
        title = "图片详情"
        // 设置图片地址
        detailImage.image = UIImage(named: id)
    }
    

}
