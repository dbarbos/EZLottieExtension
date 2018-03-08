//
//  EZLottieExtension.swift
//  EZLottieExtension_Example
//
//  Created by Diler Barbosa on 08/03/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import Lottie

public protocol EZLottieExtension {
    var animateView: LOTAnimationView { get set }
}

extension EZLottieExtension where Self : UIView {
    
    public var animateView: LOTAnimationView {
        get {
            for lottieView in self.subviews {
                if let ltv = lottieView as? LOTAnimationView {
                    return ltv
                }
            }
            return LOTAnimationView()
        }
        set(newVal) {
            for lottieView in self.subviews {
                if let ltv = lottieView as? LOTAnimationView {
                    ltv.removeFromSuperview()
                }
            }
            self.addSubview(newVal)
        }
    }
    
   
    public mutating func addLottieView(_ view: LOTAnimationView, scale: CGFloat) {
        animateView = view
        view.isUserInteractionEnabled = false
        self.addSubview(view)
        view.frame = self.frame
        view.translatesAutoresizingMaskIntoConstraints = true
        view.center = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        view.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    public func playAnimation() {
        animateView.stop()
        animateView.play()
        if #available(iOS 10.0, *) {
            let impact = UIImpactFeedbackGenerator()
            impact.impactOccurred()
        }
        
    }
}

extension UIView : EZLottieExtension {
    
}
