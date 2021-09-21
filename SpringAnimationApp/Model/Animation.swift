//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Олег Лысенко on 21.09.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimations() -> [Animation] {
        [
        Animation(
            preset: "shake",
            curve: "spring",
            force: 1.98,
            duration: 1.04,
            delay: 0.30),
        Animation(
            preset: "pop",
            curve: "linear",
            force: 1.67,
            duration: 1.34,
            delay: 0.45),
        Animation(
            preset: "morph",
            curve: "easeIn",
            force: 1.15,
            duration: 1.60,
            delay: 0.7),
        Animation(
            preset: "swing",
            curve: "easeOut",
            force: 1.0,
            duration: 1.9,
            delay: 0.15)
        ]
    }
}
