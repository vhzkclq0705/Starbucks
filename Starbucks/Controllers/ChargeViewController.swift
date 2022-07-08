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
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    @IBOutlet weak var totalCostLabel: UILabel!
    
    @IBOutlet var costButtons: [UIButton]!
    @IBOutlet var meansButtons: [UIButton]!
    
    var costButtonIndex = 0
    
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

    @IBAction func didTapCostButton(_ sender: UIButton) {
        costButtons.forEach {
            $0.configuration?.baseBackgroundColor = .white
            $0.configuration?.baseForegroundColor = .darkGray
        }
        
        sender.configuration?.baseBackgroundColor = #colorLiteral(red: 0.01176470588, green: 0.6950220829, blue: 0.2415293448, alpha: 1)
        sender.configuration?.baseForegroundColor = .white
    }
    
    @IBAction func didTapMeansButton(_ sender: UIButton) {
        meansButtons.forEach {
            $0.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
        sender.setImage(
            UIImage(systemName: "smallcircle.filled.circle"),
            for: .normal)
    }
    
    @IBAction func didTapBottomButton(_ sender: UIButton) {
        sender.isHidden = true
        bottomViewHeight.constant = 80
    }
    
}
