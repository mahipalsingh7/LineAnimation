//
//  ViewController.swift
//  LineANIMATIONS
//
//  Created by MAhipal on 21/12/18.
//  Copyright © 2018 VANDANA. All rights reserved.
//

import Foundation
import UIKit

func shapeSharpe(stokeColor:UIColor,durationTime:TimeInterval, movePoint:CGPoint,addLine:CGPoint) -> CAShapeLayer {
    // create whatever path you want
    print("/***Start***/")

    print(movePoint)
    print(addLine)
    
    print("/***end***/")
    let path = UIBezierPath()
    path.move(to: movePoint)
    path.addLine(to: addLine)
    
    // create shape layer for that path
    let shapeLayer = CAShapeLayer()
    shapeLayer.fillColor = stokeColor.cgColor
    shapeLayer.strokeColor = stokeColor.cgColor
    shapeLayer.lineWidth = 7
    shapeLayer.path = path.cgPath
    shapeLayer.borderWidth = 0
     let animation = CABasicAnimation(keyPath: "strokeEnd")
    animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
    animation.duration = durationTime
    animation.fromValue = 0
    animation.toValue = 1
    
    //        animation.repeatCount = 2
    shapeLayer.add(animation, forKey: "hypnoscale")
    return shapeLayer
}
