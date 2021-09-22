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
 
}
 
extension Animation {
    static func getAnimations() -> [Animation] {
       
        var animations: [Animation] = []
        
        let presets = DataManager.shared.preset.shuffled()
        let curves = DataManager.shared.curve.shuffled()
        
        for index in 0..<curves.count {
            let forces = DataManager.shared.force
            let durations = DataManager.shared.duration
            let delays = DataManager.shared.delay
            
            let animation = Animation(
                preset: presets[index],
                curve: curves[index],
                force: forces,
                duration: durations,
                delay: delays
            )
            
            animations.append(animation)
        }
        
        return animations
        
    }
}
