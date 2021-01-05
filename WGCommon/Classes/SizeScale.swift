//
//  SizeScale.swift
//  WGCommon
//
//  Created by chen liang on 2021/1/5.
//

import UIKit
protocol CGFloatProtocol {
    func toCgFloat() -> CGFloat
}

extension Int: CGFloatProtocol {
    func toCgFloat() -> CGFloat {
        return CGFloat(self)
    }
}

extension Float: CGFloatProtocol {
    func toCgFloat() -> CGFloat {
        return CGFloat(self)
    }
}

extension Double: CGFloatProtocol {
    func toCgFloat() -> CGFloat {
        return CGFloat(self)
    }
}


func scaleX<T>(_ value: T) -> CGFloat where T: CGFloatProtocol {
    let xscale = kSCREEN_WIDTH/375;
    return value.toCgFloat() * xscale
    
}

func scaleY<T>(_ value: T) -> CGFloat where T: CGFloatProtocol {
    let xscale = kSCREEN_HEIGHT/667;
    return value.toCgFloat() * xscale
}
