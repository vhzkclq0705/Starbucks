//
//  BreadsViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class BreadsViewController: UIViewController {

    @IBOutlet weak var bread1: UIImageView!
    @IBOutlet weak var bread2: UIImageView!
    @IBOutlet weak var bread3: UIImageView!
    @IBOutlet weak var bread4: UIImageView!
    @IBOutlet weak var bread5: UIImageView!
    @IBOutlet weak var bread6: UIImageView!
    @IBOutlet weak var bread7: UIImageView!
    @IBOutlet weak var bread8: UIImageView!
    @IBOutlet weak var bread9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCorner()
    }

    func setImageCorner() {
        // 이미지의 크기가 150 * 150이기 때문에 값으 75로 주었습니다.
        [
            bread1,
            bread2,
            bread3,
            bread4,
            bread5,
            bread6,
            bread7,
            bread8,
            bread9,
        ]
            .forEach { $0.layer.cornerRadius = 75 }
    }
}
