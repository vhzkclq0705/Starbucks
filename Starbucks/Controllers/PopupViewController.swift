//
//  PopupViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/09.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapCloseButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
