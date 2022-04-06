//
//  RandomAnimated.swift
//  Spring work
//
//  Created by Назар Ткаченко on 06.04.2022.
//

struct RandomAnimate {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
}
extension RandomAnimate {
    static func getRandom() -> [RandomAnimate] {
        
        var randomAnimate: [RandomAnimate] = []
        
        for _ in 0...1000 {
            let options = RandomAnimate(preset: DataManager.shared.animations.randomElement() ?? "ERROR",
                                        curve: DataManager.shared.animations.randomElement() ?? "ERROR",
                                        force: Float.random(in: 1...3),
                                        duration: Float.random(in: 0.5...2.2),
                                        delay: Float.random(in: 0.0...0.8))
            randomAnimate.append(options)
        }
        return randomAnimate
    }
}
