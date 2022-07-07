//
//  EventsViewController.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/07.
//

import UIKit

class EventsViewController: UIViewController {

    @IBOutlet weak var event1: UIImageView!
    @IBOutlet weak var event2: UIImageView!
    @IBOutlet weak var event3: UIImageView!
    @IBOutlet weak var event4: UIImageView!
    @IBOutlet weak var event5: UIImageView!
    @IBOutlet weak var event6: UIImageView!
    @IBOutlet weak var event7: UIImageView!
    @IBOutlet weak var event8: UIImageView!
    @IBOutlet weak var event9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCorner()
    }

    func setImageCorner() {
        [
            event1,
            event2,
            event3,
            event4,
            event5,
            event6,
            event7,
            event8,
            event9,
        ]
            .forEach { $0.layer.cornerRadius = 5 }
    }

}
