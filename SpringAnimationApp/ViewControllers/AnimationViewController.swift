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
        
    private var animations = Animation.getAnimations()
    private var randomAnimation: Animation!

    @IBAction func springAnimationButton(_ sender: SpringButton) {
        randomAnimation = animations.randomElement()
        
        springAnimationButton.setTitle(randomAnimation.preset, for: .normal)
        
        setUpAnimation(
            animation: randomAnimation.preset,
            curve: randomAnimation.curve,
            force: randomAnimation.force,
            duration: randomAnimation.duration,
            delay: randomAnimation.delay
        )
                
        springAnimationLabel.text = displayingInformation()
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
    
    private func displayingInformation() -> String {
        let information = """
            Preset: \(randomAnimation.preset)
            Curve: \(randomAnimation.curve)
            Force: \(String(format: "%.2f", randomAnimation.force))
            Duration: \(String(format: "%.2f", randomAnimation.duration))
            Delay: \(String(format: "%.2f", randomAnimation.delay))
        """
        return information
    }
}
