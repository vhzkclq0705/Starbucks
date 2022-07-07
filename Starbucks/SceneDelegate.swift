//
//  SceneDelegate.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // Resign 상태일 때, 띄워줄 이미지
    let resignView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "resign")
        
        return imageView
    }()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // 앱으로 돌아왔을 때, 이미지 제거
        resignView.removeFromSuperview()
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Resign 상태일 때, 이미지 추가
        resignView.frame = UIScreen.main.bounds
        
        window?.rootViewController?.view.window?.addSubview(resignView)
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        window?.rootViewController?.view.window?.removeFromSuperview()
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

