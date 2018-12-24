//
//  ViewController.swift
//  LineANIMATIONS
//
//  Created by MAhipal on 21/12/18.
//  Copyright © 2018 VANDANA. All rights reserved.
//
import UIKit

class FirstView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    public  override func draw(_ rect: CGRect) {
        for index in 4...totalSpokes {
            if (index == 6 || index == 10) {
                //outer lines
                let point = index*lineSpacing
                self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0.9493889213, green: 0.5480326414, blue: 0.01429909281, alpha: 1), durationTime: 0, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }else {
                let point = index*lineSpacing
                self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0.9493889213, green: 0.5480326414, blue: 0.01429909281, alpha: 1), durationTime:0.5, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }
        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            for index in 4...totalSpokes {
                if (index == 6 || index == 10) {
                    //outer lines
                    let point = index*lineSpacing
                    self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 0, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }else {
                    let point = index*lineSpacing
                    self.layer.addSublayer(shapeSharpe(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 0.5, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }
            }
        }
    }

}
