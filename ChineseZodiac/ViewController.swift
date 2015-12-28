//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Scott on 2015/12/25.
//  Copyright © 2015年 Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loveYou: UILabel!
    
    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!){
            let imageNumber = (year-4)%12
            image.image = UIImage(named:String(imageNumber))
            
            
        }
        let year1 = Int(yearOfBirth.text!)
        if year1 == 1989{
            loveYou.text = "蛋殼我愛妳"
        }
        
        
    }

}

