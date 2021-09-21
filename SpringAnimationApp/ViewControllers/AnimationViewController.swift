//
//  AnimationViewController.swift
//  SpringAnimationApp
//
//  Created by Олег Лысенко on 21.09.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: UILabel!
    @IBOutlet var springAnimationButton: SpringButton!
        
    var animations = Animation.getAnimations()

    @IBAction func springAnimationButton(_ sender: SpringButton) {
        var randomAnimation: Animation!
        
        for animation in animations {
            randomAnimation = animation
            animations.shuffle()
        }
        
        setUpAnimation(
            animation: randomAnimation.preset,
            curve: randomAnimation.curve,
            force: randomAnimation.force,
            duration: randomAnimation.duration,
            delay: randomAnimation.delay
        )
        
        springAnimationButton.setTitle(randomAnimation.preset, for: .normal)
        springAnimationLabel.text = randomAnimation.preset
    }
    

//MARK: - Private Methods
   private func setUpAnimation(animation: String, curve: String, force: Double, duration: Double, delay: Double) {
        springAnimationView.animation = animation
        springAnimationView.curve = curve
        springAnimationView.force = CGFloat(force)
        springAnimationView.duration = CGFloat(duration)
        springAnimationView.delay = CGFloat(delay)
        springAnimationView.animate()
    }
}
