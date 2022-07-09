//
//  BreadsViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class BreadsViewController: UIViewController {

    @IBOutlet var breads: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCorner()
    }

    func setImageCorner() {
        // 이미지의 크기가 150 * 150이기 때문에 값으 75로 주었습니다.
        breads.forEach { $0.layer.cornerRadius = 75 }
    }
}
