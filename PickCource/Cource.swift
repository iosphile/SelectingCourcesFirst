//
//  Cource.swift
//  PickCource
//
//  Created by Rajesh Kommana on 20/10/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import Foundation

class Cource: NSObject {
    var courceName: String = ""
    var isSelected: Bool = false
    func toggleSelected() {
        isSelected = !isSelected
    }
}
