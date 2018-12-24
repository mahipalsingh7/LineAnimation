//
//  ViewController.swift
//  LineANIMATIONS
//
//  Created by MAhipal on 21/12/18.
//  Copyright © 2018 VANDANA. All rights reserved.
//

import Foundation


import UIKit
////Gobal SPokes Values
//var self.lineSpacingInView = 30
//let self.totalSpokesinVIew = 10
class MixedView: UIView {
    
    
    
    @IBInspectable var lineSpacingInView: Int = 30 // set Shadow Color
        {
        didSet {
        }
    }
    
    @IBInspectable var totalSpokesinVIew: Int = 10 // set Shadow Color
        {
        didSet {
        }
    }
    
    
    @IBInspectable var clearLine: UIColor! // set Shadow Color
        {
        didSet {
        }
    }
    
    @IBInspectable var firstPatterColor: UIColor! // set Shadow Color
        {
        didSet {
        }
    }
    @IBInspectable var thirdPatter: UIColor! // set Shadow Color
        {
        didSet {
        }
    }
    @IBInspectable var fourthPatternColor: UIColor! // set Shadow Color
        {
        didSet {
        }
    }
    
    @IBInspectable var FinalPatternColor: UIColor! // set Shadow Color
        {
        didSet {
        }
    }
    
    @IBInspectable var isTopRight: Bool = false // set Shadow Color
        {
        didSet {
        }
    }
    
  
    
    
    var xinitial:Int = 0
    var yinitial:Int = 0
    public override func draw(_ rect: CGRect) {
        
 
        xinitial = isTopRight ? Int(rect.size.width) : 0
        yinitial = isTopRight ? 0 : Int(rect.size.height)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
            
            for index in 4...self.totalSpokesinVIew {
                if (index == 4 || index == 10 || index == 7 ) {
                    //outer lines
                    self.setLayerValues(index: index, color: self.firstPatterColor, durationTime: 0.3)
                    }else {
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                        self.setLayerValues(index: index, color: self.firstPatterColor, durationTime: 0.4)
                    }
                }
              }

            //            Clear All Spokes
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                for index in 4...self.totalSpokesinVIew {
                    if (index == 4 || index == 10 || index == 7 ) {
                         self.setLayerValues(index: index, color: self.clearLine, durationTime: 0)
                        }else {
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
                             self.setLayerValues(index: index, color: self.clearLine, durationTime: 0.4)
                        }
                    }
                }
                //Clear All Spokes
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    self.thridPattern()

                }
            }
        }
    }
    
    func thridPattern(){
        
        for index in 4...self.totalSpokesinVIew {
            var time = 0.0

            if index % 2 != 0 {
                time = 0.5
            }else {
                time = 0.7
            }
            
            self.setLayerValues(index: index, color: self.thirdPatter, durationTime: time)

        }
        
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+0.9) {
            for index in 4...self.totalSpokesinVIew {
                var time = 0.0
                if index % 2 != 0 {
                    time = 0.5
                 }else {
                      time = 0.7
                }
                self.setLayerValues(index: index, color: self.clearLine, durationTime: time)
            }
            
            //            Clear All Spokes
            DispatchQueue.main.asyncAfter(deadline: .now()+0.8) {
                self.fourthPattern()
            }
            
        }
    }
    
    func fourthPattern(){
        var mmaxAni = 2.5//0.8
        for index in 4...self.totalSpokesinVIew {
             if mmaxAni > 0.1{
                mmaxAni = mmaxAni-0.5
                mmaxAni = Double(String(format: "%.2f",mmaxAni ))!
            }
              self.setLayerValues(index: index, color: self.fourthPatternColor, durationTime: mmaxAni)
        }
     
        //Clear All Spokes
        DispatchQueue.main.asyncAfter(deadline: .now()+1.7) {
            var mmaxrev = 2.5
            for index in 4...self.totalSpokesinVIew {
                if mmaxrev > 0.1{
                    mmaxrev = mmaxrev-0.5
                    mmaxrev = Double(String(format: "%.2f",mmaxrev ))!
                }
                print(mmaxrev)
                 self.setLayerValues(index: index, color: self.clearLine, durationTime: mmaxrev)
                }
            DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
                self.greenPattern()
            }
        }
    }
    
    func greenPattern(){
        for index in 4...self.totalSpokesinVIew {
            setLayerValues(index: index, color: self.FinalPatternColor, durationTime: 0.5)
         }
     }
    
    
     func setLayerValues(index:Int,color:UIColor,durationTime:TimeInterval){
        
        
//         let Xslider = self.xinitial - (index*self.lineSpacingInView)
//
//        let movePointsY = index*self.lineSpacingInView
//        let Xslider = self.xinitial - (index*self.lineSpacingInView)
//        self.layer.addSublayer(shapeSharpe(stokeColor: self.firstPatterColor, durationTime: 0.3, movePoint: CGPoint(x: self.xinitial, y: movePointsY), addLine: CGPoint(x: Xslider, y: 0)))
//
        
        let moveX =  isTopRight ? self.xinitial : index*self.lineSpacingInView
        let movePointsY = isTopRight ? index*self.lineSpacingInView : self.yinitial
        let addLineX = isTopRight ? self.xinitial - (index*self.lineSpacingInView) : self.xinitial
        let addLineY = isTopRight ? self.yinitial : self.yinitial - (index*self.lineSpacingInView)
        
        self.layer.addSublayer(shapeSharpe(stokeColor: color, durationTime:durationTime , movePoint: CGPoint(x:moveX, y: movePointsY), addLine: CGPoint(x: addLineX, y: addLineY)))
        
        
    }
    
}
