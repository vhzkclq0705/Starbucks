//
//  DrinksViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class DrinksViewController: UIViewController {

    @IBOutlet weak var drink1: UIImageView!
    @IBOutlet weak var drink2: UIImageView!
    @IBOutlet weak var drink3: UIImageView!
    @IBOutlet weak var drink4: UIImageView!
    @IBOutlet weak var drink5: UIImageView!
    @IBOutlet weak var drink6: UIImageView!
    @IBOutlet weak var drink7: UIImageView!
    @IBOutlet weak var drink8: UIImageView!
    @IBOutlet weak var drink9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCorner()
    }

    func setImageCorner() {
        // 이미지의 크기가 150 * 150이기 때문에 값으 75로 주었습니다.
        [
            drink1,
            drink2,
            drink3,
            drink4,
            drink5,
            drink6,
            drink7,
            drink8,
            drink9,
        ]
            .forEach { $0.layer.cornerRadius = 75 }
    }
    
}
