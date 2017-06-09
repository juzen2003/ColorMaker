//
//  ViewController.swift
//  ColorMaker
//
//  Created by Yu-Jen Chang on 6/7/17.
//  Copyright © 2017 Yu-Jen Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlide: UISlider!
    @IBOutlet weak var greenSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setSlideRange(0.0, max: 1.0, slide: redSlide)
        setSlideRange(0.0, max: 1.0, slide: greenSlide)
        setSlideRange(0.0, max: 1.0, slide: blueSlide)
        
        makeColor()
    }

    @IBAction func makeColor() {
        
        if (self.redSlide == nil || self.greenSlide == nil || self.blueSlide == nil) {
            return
        }
        //print("\(self.redSlide.value)")
        //print("\(self.greenSlide.value)")
        //print("\(self.blueSlide.value)")
        let red: CGFloat = CGFloat(self.redSlide.value)
        let green: CGFloat = CGFloat(self.greenSlide.value)
        let blue: CGFloat = CGFloat(self.blueSlide.value)
        
        self.colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func setSlideRange(_ min: Float, max: Float, slide: UISlider!) {
        if slide == nil {
            return
        } else {
            slide.minimumValue = min
            slide.maximumValue = max
        }
    }

}

