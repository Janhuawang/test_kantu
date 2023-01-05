//
//  SceneDelegate.swift
//  KanTu
//
//  Created by TERMINUS-JH on 2023/1/5.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    open class var shared:SceneDelegate{
        get{
            let scene = UIApplication.shared.connectedScenes.first
            return scene?.delegate as! SceneDelegate
        }
    }
    
    /// 下一步逻辑
    func next(){
        print("SceneDelegate next")
        
        toLogin()
    }
    
    /// 跳转登录页
    func toLogin(){
        /// 获取main的storyboard
        let mainStoryboard =  UIStoryboard(name:"Main",bundle: nil)
        
        /// 获取登录页的viewController
        let controller = mainStoryboard.instantiateViewController(withIdentifier: "Login")
        
        /// 将窗口的根设置为登录页，相等于将启动页给替换掉了，这样在返回时不会再出现启动页
        window?.rootViewController = controller;
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

