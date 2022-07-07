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
    
    let maxHeight: CGFloat = 300
    let minHeight: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollPosition = scrollView.contentOffset.y
        let y = topBannerHeight.constant - scrollPosition
        
        if y > maxHeight {
            topBannerHeight.constant = maxHeight
        }
        else if y < minHeight {
            topBannerHeight.constant = minHeight
            topBanner.alpha = 0
        } else {
            topBannerHeight.constant = y
            topBanner.alpha = y / 300
            
            scrollView.contentOffset.y = 0
        }
    }
}
