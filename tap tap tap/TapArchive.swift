//
//  TapArchive.swift
//  tap tap tap
//
//  Created by Davelaar,Clinton B on 11/8/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class TapArchive{
    private var points:[CGPoint] = []
    
    static private var _shared:TapArchive!
    
    static var shared:TapArchive{
        if _shared == nil{
            _shared = TapArchive()
        }
        return _shared
    }
    
    func numPoints()->Int{
        return points.count
    }
    
    subscript(index:Int)-> CGPoint{
        return points[index]
    }
    
    func addPoint(_ point:CGPoint){
        points.append(point)
    }
    
}
