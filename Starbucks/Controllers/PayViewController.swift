//
//  PayViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollViewTop: NSLayoutConstraint!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var card: UIImageView!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var moneyLabel: UILabel!
    
    var money: Int = 17400
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        // moneyLabel의 text 설정
        moneyLabel.text = "\(formatCost(money)) 원"
        
        // contentView의 그림자 설정
        contentView.layer.shadowColor = UIColor.darkGray.cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: 10)
        contentView.layer.shadowOpacity = 0.1
        
        // card의 테두리 설정
        card.layer.cornerRadius = 10
        card.layer.borderWidth = 0.5
        card.layer.borderColor = UIColor.lightGray.cgColor
        
        // star의 테두리 설정
        star.layer.cornerRadius = 5
        star.layer.borderWidth = 0.5
        star.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func didTapChargeButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ChargeViewController") as? ChargeViewController else { return }
        vc.delegate = self
        vc.money = money
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// SendDataDelegate 프로토콜 상속
extension PayViewController: SendDataDelegate {
    func changeMoney(_ money: Int) {
        self.money = money
        moneyLabel.text = "\(formatCost(money)) 원"
    }
}
