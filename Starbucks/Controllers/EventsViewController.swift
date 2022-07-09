//
//  EventsViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class EventsViewController: UIViewController {

    @IBOutlet var events: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCorner()
    }

    func setImageCorner() {
        events.forEach { $0.layer.cornerRadius = 5 }
    }

}
