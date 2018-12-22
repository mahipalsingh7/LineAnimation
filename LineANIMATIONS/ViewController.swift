//
//  ViewController.swift
//  LineANIMATIONS
//
//  Created by MAhipal on 21/12/18.
//  Copyright © 2018 VANDANA. All rights reserved.
//

import UIKit

//Gobal SPokes Values
var lineSpacing = 30
let totalSpokes = 10


class FirstPatterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    public override func draw(_ rect: CGRect) {
        for index in 4...totalSpokes {
            if (index == 6 || index == 10) {
                //outer lines
                let point = index*lineSpacing
                self.layer.addSublayer(firstSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0.9493889213, green: 0.5480326414, blue: 0.01429909281, alpha: 1), durationTime: 0, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }else {
                let point = index*lineSpacing
                self.layer.addSublayer(firstSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0.9493889213, green: 0.5480326414, blue: 0.01429909281, alpha: 1), durationTime:0.5, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }
        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            for index in 4...totalSpokes {
                if (index == 6 || index == 10) {
                    //outer lines
                    let point = index*lineSpacing
                    self.layer.addSublayer(self.firstSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 0, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }else {
                    let point = index*lineSpacing
                    self.layer.addSublayer(self.firstSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 0.5, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }
            }
        }
        
    }
    
    
    func firstSetOfAnimationFunction(stokeColor:UIColor,durationTime:TimeInterval, movePoint:CGPoint,addLine:CGPoint) -> CAShapeLayer {
        // create whatever path you want
        let path = UIBezierPath()
        path.move(to: movePoint)
        path.addLine(to: addLine)
        
        // create shape layer for that path
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = stokeColor.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.path = path.cgPath
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.duration = durationTime
        animation.fromValue = 0
        animation.toValue = 1
        //        animation.repeatCount = 2
        shapeLayer.add(animation, forKey: "hypnoscale")
        return shapeLayer
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        print("Animation END")
        
    }
    
}


class ThirdPatterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    public override func draw(_ rect: CGRect) {
        for index in 4...totalSpokes {
            if index % 2 != 0 {
                //outer lines
                let point = index*lineSpacing
                self.layer.addSublayer(thirdSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0.3988277316, green: 0.9954558015, blue: 0.9984416366, alpha: 1), durationTime: 1, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }else {
                let point = index*lineSpacing
                self.layer.addSublayer(thirdSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0.3988277316, green: 0.9954558015, blue: 0.9984416366, alpha: 1), durationTime: 2, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }
        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            for index in 4...totalSpokes {
                if index % 2 != 0 {
                    //outer lines
                    let point = index*lineSpacing
                    self.layer.addSublayer(self.thirdSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 1, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }else {
                    let point = index*lineSpacing
                    self.layer.addSublayer(self.thirdSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: 2, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
                }
            }
        }
        
    }
    
    
    func thirdSetOfAnimationFunction(stokeColor:UIColor,durationTime:TimeInterval, movePoint:CGPoint,addLine:CGPoint) -> CAShapeLayer {
        // create whatever path you want
        let path = UIBezierPath()
        path.move(to: movePoint)
        path.addLine(to: addLine)
        
        // create shape layer for that path
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = stokeColor.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.path = path.cgPath
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.duration = durationTime
        animation.fromValue = 0
        animation.toValue = 1
        shapeLayer.add(animation, forKey: "hypnoscale")
        return shapeLayer
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        print("Animation END")
        
    }
    
}

class FourthPatterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    /*****
     PAtter with Seven spokes move paraller
     **/
    public override func draw(_ rect: CGRect) {
        
        for index in 4...totalSpokes {
            let point = index*lineSpacing
            let timeduration = (TimeInterval((totalSpokes)-index))/3
            self.layer.addSublayer(fourthSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0.9664579034, green: 0.9878928065, blue: 0.00755209988, alpha: 1), durationTime:timeduration , movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            
            for index in 4...totalSpokes {
                let point = index*lineSpacing
                let timeduration = (TimeInterval((totalSpokes)-index))/3
                self.layer.addSublayer(self.fourthSetOfAnimationFunction(stokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), durationTime: timeduration, movePoint: CGPoint(x: 0, y: point), addLine: CGPoint(x: point, y: 0)))
            }
        }
    }
    
    
    func fourthSetOfAnimationFunction(stokeColor:UIColor,durationTime:TimeInterval, movePoint:CGPoint,addLine:CGPoint) -> CAShapeLayer {
        // create whatever path you want
        let path = UIBezierPath()
        path.move(to: movePoint)
        path.addLine(to: addLine)
        
        // create shape layer for that path
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = stokeColor.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.path = path.cgPath
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.duration = durationTime
        animation.fromValue = 0
        animation.toValue = 1
        shapeLayer.add(animation, forKey: "hypnoscale")
        return shapeLayer
    }
}

class ViewController: UIViewController,CAAnimationDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

