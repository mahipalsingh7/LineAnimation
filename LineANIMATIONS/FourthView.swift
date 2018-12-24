//
//  ViewController.swift
//  LineANIMATIONS
//
//  Created by MAhipal on 21/12/18.
//  Copyright © 2018 VANDANA. All rights reserved.
//
import UIKit

class FourthView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    public override func draw(_ rect: CGRect) {
        
        for index in 4...totalSpokes {
            let point = index*lineSpacing
            let timeduration = (TimeInterval((totalSpokes)-index))/5
            self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0.9664579034, green: 0.9878928065, blue: 0.00755209988, alpha: 1), durationTime:timeduration , movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            
            for index in 4...totalSpokes {
                let point = index*lineSpacing
                let timeduration = (TimeInterval((totalSpokes)-index))/5
                self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: timeduration, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }
        }
    }

}
