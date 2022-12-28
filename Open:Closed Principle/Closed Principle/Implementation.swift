//
//  Implementation.swift
//  Closed Principle
//
//  Created by Powerplay on 28/12/22.
//

import Foundation
import UIKit

protocol Shape {
    func calculateArea() -> Double
}

class Rectangle: Shape {
    let length: Double
    let breadth: Double
    
    init(_length: Double, _breadth: Double){
        length = _length
        breadth = _breadth
    }
    
    func calculateArea() -> Double {
        return length*breadth
    }
}

class Circle: Shape {
    let radius: Double
    
    init(_radius: Double){
        radius = _radius
    }
    
    func calculateArea() -> Double {
        return Double.pi*radius*radius
    }
}

class Triangle: Shape {
    let base: Double
    let height: Double
    
    init(_base: Double, _height: Double){
        base = _base
        height = _height
    }
    
    func calculateArea() -> Double {
        return 0.5*base*height
    }
}

class AreaCalculator {
    func area(shape: Shape) -> Double {
        return shape.calculateArea()
    }
}

let obj = AreaCalculator()

let objRect = Rectangle(_length: 3, _breadth: 4)
let objCir = Circle(_radius: 10)
let objTri = Triangle(_base: 2, _height: 5)

debugPrint("Area of rectangle = \(obj.area(shape: objRect))")
debugPrint("Area of circle = \(obj.area(shape: objCir))")
debugPrint("Area of triangle = \(obj.area(shape: objTri))")
