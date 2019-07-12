//
//  ViewController.swift
//  test
//
//  Created by Amritpal singh on 2019-07-11.
//  Copyright © 2019 Amritpal singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box: UILabel!
    var i = 0.0
    let durationOfAnimationInSecond = 1.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boxUp()
        
    }
    
    func boxDown(){
        UIView.animate(withDuration: 1, delay: 0 ,animations: {
            
        }, completion: {
            (completed: Bool) -> Void in
            UIView.animate(withDuration: 1, delay: 1  ,animations: {
                self.box.transform = CGAffineTransform(translationX: 280, y: 0)
            }, completion: {
                (completed: Bool) -> Void in
                UIView.animate(withDuration: 1, delay: 0  ,animations: {
                    self.box.transform = CGAffineTransform(translationX: 210, y: 0)
                }, completion: {
                    (completed: Bool) -> Void in
                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                        self.box.transform = CGAffineTransform(translationX: 210, y: 720)
                    }, completion: {
                        (completed: Bool) -> Void in
                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                            self.box.transform = CGAffineTransform(translationX: 140, y: 720)
                        }, completion: {
                            (completed: Bool) -> Void in
                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                self.box.transform = CGAffineTransform(translationX: 140, y: 0)
                            }, completion: { (completed: Bool) -> Void in
                                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                    self.box.transform = CGAffineTransform(translationX: 70, y: 0)
                                }, completion: { (completed: Bool) -> Void in
                                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                        self.box.transform = CGAffineTransform(translationX: 70, y: 720)
                                    }, completion: { (completed: Bool) -> Void in
                                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                            self.box.transform = CGAffineTransform(translationX: 0, y: 720)
                                        }, completion: { (completed: Bool) -> Void in
                                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                                self.box.transform = CGAffineTransform(translationX: 0, y: 0)
                                            }, completion: { (completed: Bool) -> Void in
                                                UIView.animate(withDuration: 1, delay: 1 ,animations: {
                                                    self.box.backgroundColor = self.randomColor()
                                                }, completion: { (completed: Bool) -> Void in
                                                    self.boxUp()
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    }
    
    func boxUp(){
        
        UIView.animate(withDuration: 1, delay: 1 ,animations: {
            self.box.transform = CGAffineTransform(translationX: 0, y: 720)
        }, completion: {
            (completed: Bool) -> Void in
            UIView.animate(withDuration: 1, delay: 0  ,animations: {
                self.box.transform = CGAffineTransform(translationX: 70, y: 720)
            }, completion: {
                (completed: Bool) -> Void in
                UIView.animate(withDuration: 1, delay: 0  ,animations: {
                    self.box.transform = CGAffineTransform(translationX: 70, y: 0)
                }, completion: {
                    (completed: Bool) -> Void in
                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                        self.box.transform = CGAffineTransform(translationX: 140, y: 0)
                    }, completion: {
                        (completed: Bool) -> Void in
                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                            self.box.transform = CGAffineTransform(translationX: 140, y: 720)
                        }, completion: {
                            (completed: Bool) -> Void in
                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                self.box.transform = CGAffineTransform(translationX: 210, y: 720)
                            }, completion: { (completed: Bool) -> Void in
                                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                    self.box.transform = CGAffineTransform(translationX: 210, y: 0)
                                }, completion: { (completed: Bool) -> Void in
                                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                        self.box.transform = CGAffineTransform(translationX: 280, y: 0)
                                    }, completion: { (completed: Bool) -> Void in
                                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                            self.box.transform = CGAffineTransform(translationX: 280, y: 720)
                                        }, completion: { (completed: Bool) -> Void in
                                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                                self.box.backgroundColor = self.randomColor()
                                            }, completion: { (completed: Bool) -> Void in
                                                self.boxDown()
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
        
    }

    func randomColor() -> UIColor {
        let random = {CGFloat(arc4random_uniform(255)) / 255.0}
        return UIColor(red: random(), green: random(), blue: random(), alpha: 1)
    }
}

