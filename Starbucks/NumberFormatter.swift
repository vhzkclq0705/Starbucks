//
//  NumberFormatter.swift
//  Starbucks
//
//  Created by 권오준 on 2022/07/09.
//

import Foundation

// Int형의 값을 받아 1000단위로 콤마(,)를 표시하여 String 값으로 반환해주는 함수
public func formatCost(_ cost: Int) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal

    let result = numberFormatter.string(for: cost)!
    
    return result
}
