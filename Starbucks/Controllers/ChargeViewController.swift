//
//  ChargeViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/09.
//

import UIKit

protocol SendDataDelegate {
    func changeMoney(_ money: Int)
}

class ChargeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var card: UIImageView!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var noticeView: UIView!
    @IBOutlet weak var totalCostLabel: UILabel!
    @IBOutlet var costButtons: [UIButton]!
    @IBOutlet var meansButtons: [UIButton]!
    
    var delegate : SendDataDelegate?
    var money: Int = 0
    var totalCost: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar()
        setup()
    }
    
    func setNavigationBar() {
        // 네비게이션 바 백버튼 설정
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backButtonTitle = ""
    }
    
    func setup() {
        // moneyLabel의 text를 이전 ViewController에서 받아온 money의 값으로 설정
        moneyLabel.text = "\(formatCost(money)) 원"
        // 처음 load되었을 때, 1만원 버튼이 눌려있기 때문에, 10000을 더한다
        totalCost = money + 10000
        totalCostLabel.text = "\(formatCost(totalCost)) 원"
        
        // card에 살짝 둥근 테두리 추가
        card.layer.cornerRadius = 3
        card.layer.borderWidth = 0.3
        card.layer.borderColor = UIColor.lightGray.cgColor
        
        // 충전 금액 버튼들의 초기 설정
        costButtons.forEach {
            $0.layer.cornerRadius = 5
            if $0.titleLabel?.text != "1만원" {
                $0.layer.borderWidth = 0.5
                $0.layer.borderColor = UIColor.darkGray.cgColor
            }
        }
    }
    
    // 총 금액 계산 함수
    func changeTotalCost(_ cost: Int) {
        totalCost = money + cost
        
        totalCostLabel.text = "\(formatCost(totalCost)) 원"
    }

    @IBAction func didTapCostButton(_ sender: UIButton) {
        // 모든 버튼의 배경 색을 흰색, 글씨 색을 진한 회색, 테두리 굵기를 0.5로 설정
        costButtons.forEach {
            $0.configuration?.baseBackgroundColor = .white
            $0.configuration?.baseForegroundColor = .darkGray
            $0.layer.borderWidth = 0.5
        }
        
        // 선택한 버튼의 배경 색을 초록색, 글씨 색을 흰색, 테두리 없애기
        sender.configuration?.baseBackgroundColor = #colorLiteral(red: 0.01176470588, green: 0.6950220829, blue: 0.2415293448, alpha: 1)
        sender.configuration?.baseForegroundColor = .white
        sender.layer.borderWidth = 0
        
        // 선택한 버튼의 태그 값에 10000을 곱하여 changeTotalCost 함수로 전달
        changeTotalCost(sender.tag * 10000)
    }
    
    @IBAction func didTapMeansButton(_ sender: UIButton) {
        // 충전 수단 버튼의 모든 이미지를 circle로 설정
        meansButtons.forEach {
            $0.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
        // 선택한 버튼의 이미지를 smallcircle.filled.circle로 설정
        sender.setImage(
            UIImage(systemName: "smallcircle.filled.circle"),
            for: .normal)
    }
    
    @IBAction func didTapBottomButton(_ sender: UIButton) {
        // 온라인 충전 시 유의사항 옆 버튼을 누르면, 버튼이 사라지고 뷰가 생김
        sender.isHidden = true
        noticeView.isHidden = false
    }
    
    @IBAction func didTapChargeButton(_ sender: UIButton) {
        delegate?.changeMoney(totalCost)
        self.navigationController?.popViewController(animated: true)
    }
}
