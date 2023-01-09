//
//  ViewController.swift
//  KanTu
//
//  Created by TERMINUS-JH on 2023/1/5.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var dataArray:[String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 1...20{
            dataArray.append("\(index%5)")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
    }
    
    
    @IBAction func logoutClick(_ sender: Any) {
        PerferenceUtil.setLoginState(true) /// 退出登录成功设置状态
      
        SceneDelegate.shared.toLogin()
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ImageCell
        let data = dataArray[indexPath.row]
        cell.bind(data)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ImageDetail") as! ImageDetailController
        
        controller.id = dataArray[indexPath.row]
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
