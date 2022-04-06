//
//  ViewController.swift
//  Spring work
//
//  Created by Назар Ткаченко on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var runButton: UIButton!
    
    private var animateIndex = 0
    let animations = RandomAnimate.getRandom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starAnimate()
    }
    
    @IBAction func runAnimate() {
        starAnimate()
    }
    
    private func starAnimate() {
        animatedView.animation = animations[animateIndex].preset
        animatedView.curve = animations[animateIndex].curve
        animatedView.force = CGFloat(animations[animateIndex].force)
        animatedView.duration = CGFloat(animations[animateIndex].duration)
        animatedView.delay = CGFloat(animations[animateIndex].delay)
        animatedView.animate()
        
        animateIndex += 1
        
        let force = String(format: "%.1f", animations[animateIndex].force)
        let duration = String(format: "%.1f", animations[animateIndex].duration)
        let delay = String(format: "%.1f", animations[animateIndex].delay)
        optionsLabel.text = """
preset: \(animatedView.animation)
curve: \(animatedView.curve)
force: \(force)
duration: \(duration)
delay: \(delay)
"""
        runButton.setTitle("Run \(animations[animateIndex].preset)", for: .normal)
    }
}
