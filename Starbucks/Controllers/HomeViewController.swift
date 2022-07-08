//
//  HomeViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topBanner: UIImageView!
    @IBOutlet weak var topBannerHeight: NSLayoutConstraint!
    
    // topBanner의 최대, 최소 높이
    let maxHeight: CGFloat = 300
    let minHeight: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // 스크롤 뷰의 스크롤 위치, 스크롤을 내리면 증가
        let scrollPosition = scrollView.contentOffset.y
        
        // y = topBanner의 높이제약 - 스크롤 뷰의 위치
        // 스크롤을 내리면 topBanner의 높이 감소
        let y = topBannerHeight.constant - scrollPosition
        
        // y가 maxHeight보다 높으면 maxHeight로 유지
        if y > maxHeight {
            topBannerHeight.constant = maxHeight
        }
        // y가 minHeight보다 낮으면 minHeight로 유지
        else if y < minHeight {
            topBannerHeight.constant = minHeight
            
            // minHeight이면 topBanner를 안보이게
            topBanner.alpha = 0
        } else {
            // y가 maxHeight과 minHeight의 사이면 topBanner의 높이는 y
            topBannerHeight.constant = y
            // topBanner가 점점 사라짐
            topBanner.alpha = y / 300
            
            // 스크롤에 따라 topBanner가 자연스럽게 움직임
            scrollView.contentOffset.y = 0
        }
    }
}
