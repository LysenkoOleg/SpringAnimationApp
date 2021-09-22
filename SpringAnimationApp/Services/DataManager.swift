//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Олег Лысенко on 22.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let preset = [
        "shake", "pop", "morph", "squeeze", "wobble",
        "swing", "flipX", "flipY", "fall", "squeezeLeft",
        "squeezeRight", "squeezeDown", "squeezeUp", "slideLeft",
        "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
        "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
        "zoomIn", "zoomOut", "flash"
    ]
    
    let curve = [
        "spring", "linear", "easeIn",
        "easeOut", "easeInOut", "easeInCirc",
        "easeOutCirc", "easeInSine", "easeOutSine",
        "easyInOutSine", "easeInQuad", "easeOutQuad",
        "easeInOutQuad", "easeInCubic"
    ]
    
    var force:Double {
        Double.random(in: 1...2)
    }
    
    var duration:Double {
        Double.random(in: 1...2)
    }
    
    var delay:Double {
        Double.random(in: 0...1)
    }
    
    private init() {}

}
