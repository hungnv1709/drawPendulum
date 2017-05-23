//
//  ViewController.swift
//  drawPedulum
//
//  Created by Nguyen Van Hung on 5/23/17.
//  Copyright © 2017 Nguyen Van Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pendulum: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawPendulum()
        rotate()
    }

    func drawPendulum() {
        
        pendulum = UIImageView(frame: CGRect (x: 180, y: 180, width: 50, height: 200))
        pendulum.image = UIImage(named : "pendulum.png")
        pendulum.layer.anchorPoint = CGPoint(x:0.5, y:0)
        self.pendulum.transform = CGAffineTransform(rotationAngle: CGFloat (M_PI_4))
        view.addSubview(pendulum)
    }
    
    func rotate ()
    {
        UIView.animate(withDuration: 4, animations:
        {
                self.pendulum.transform = CGAffineTransform(rotationAngle: CGFloat (M_PI_4))
        }) {_ in
            UIView.animate(withDuration: 4, animations:
                {
                    self.pendulum.transform = CGAffineTransform(rotationAngle: CGFloat(-M_PI_4))
            }){_ in
                self.rotate()
            }
        }
    }
}

