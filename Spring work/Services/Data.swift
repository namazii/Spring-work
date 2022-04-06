//
//  Data.swift
//  Spring work
//
//  Created by Назар Ткаченко on 06.04.2022.
//
struct DataManager {
    static let shared = DataManager()
    let animations = ["shake",
                      "pop",
                      "morph",
                      "squeeze",
                      "wobble",
                      "swing",
                      "flipX",
                      "flipY",
                      "fall",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "slideLeft",
                      "slideRight",
                      "slideDown",
                      "slideUp",
                      "fadeIn",
                      "fadeOut",
                      "fadeInLeft",
                      "fadeInRight",
                      "fadeInDown",
                      "fadeInUp",
                      "zoomIn",
                      "flash"]
    let curves = ["spring",
                  "linear",
                  "easeIn",
                  "easeOutQuad",
                  "easeInOut"]
    private init() {}
}
