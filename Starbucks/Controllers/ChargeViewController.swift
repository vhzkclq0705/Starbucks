//
//  ChargeViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/09.
//

import UIKit

class ChargeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var card: UIImageView!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    
    @IBOutlet var costButtons: [UIButton]!
    @IBOutlet var meansButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar()
        setup()
    }
    
    func setNavigationBar() {
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
    }
    
    func setup() {
        card.layer.cornerRadius = 3
        card.layer.borderWidth = 0.3
        card.layer.borderColor = UIColor.lightGray.cgColor
        
        costButtons.forEach {
            $0.layer.cornerRadius = 5
            $0.layer.borderWidth = 0.5
            $0.layer.borderColor = UIColor.darkGray.cgColor
        }
        
        bottomViewHeight.constant = 0
        
        
    }

}
