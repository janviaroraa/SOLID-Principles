//
//  Implementation.swift
//  Liskov Substitution
//
//  Created by Powerplay on 28/12/22.
//

import Foundation
import UIKit

protocol Shape {
    func calculateArea() -> Double
}

class Rectangle: Shape {
    var length: Double
    var breadth: Double
    
    init(length: Double, breadth: Double) {
        self.length = length
        self.breadth = breadth
    }
    
    func calculateArea() -> Double {
        return length*breadth
    }
}

//Wrong way: Changing parent class properties
//class Square: Rectangle {
//    override var length: Double {
//        didSet {
//            breadth = length
//        }
//    }
//}

class Square: Shape {
    var length: Double = 0
    
    func calculateArea() -> Double {
        return length*length
    }
}

let objRect = Rectangle()
objRect.length = 3
objRect.breadth = 4
objRect.calculateArea()

let objSq = Square()
objSq.length = 4
objSq.calculateArea()
