//
//  ViewController.swift
//  Gestures
//
//  Created by quinnpan on 2018/8/24.
//  Copyright © 2018 quinnpan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imaggView : UIImageView!
    var img1:UIImage!
    var img2:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x: 0, y: 80, width: 320, height: 320)
        self.imaggView = UIImageView(frame: rect)
        img1 = UIImage(named: "img1")
        self.imaggView.image = img1;
        img2 = UIImage(named: "img2")
        
        imaggView.isUserInteractionEnabled = true
        view.addSubview(self.imaggView)
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.singleTap))
        imaggView.addGestureRecognizer(guesture)
        
        let gp = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.pinchImg(_:)))
        imaggView.addGestureRecognizer(gp)
        
    }
    @objc func singleTap() {
        if imaggView.image == self.img1{
            imaggView.image = self.img2
        }else{
            imaggView.image = img1
        }
    }
    @objc func pinchImg(_ recognizer:UIPinchGestureRecognizer) {
        recognizer.view?.transform = (recognizer.view?.transform.scaledBy(x: recognizer.scale, y: recognizer.scale))!
        recognizer.scale=1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

