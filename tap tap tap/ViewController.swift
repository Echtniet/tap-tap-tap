//
//  ViewController.swift
//  tap tap tap
//
//  Created by Davelaar,Clinton B on 11/6/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var whiteboard:WhiteBoardUIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whiteboard = self.view.viewWithTag(100) as! WhiteBoardUIView
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        whiteboard.addGestureRecognizer(tapGR)
    }
    @objc func tap(_ sender:UITapGestureRecognizer){
        print(sender.location(in: whiteboard))
        TapArchive.shared.addPoint(sender.location(in: whiteboard))
        whiteboard.setNeedsDisplay()
    }

}

