//
//  SupportCode.swift
//  RxSwiftKokorin
//
//  Created by AlexanderYakovenko on 9/2/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import Foundation



public func example(_ rxOperator: String, action: () -> Void) {
    print("\n--- Example of:", rxOperator, "---")
    action()
}
