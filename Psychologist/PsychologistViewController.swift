//
//  ViewController.swift
//  Psychologist
//
//  Created by Austin Rude on 8/24/15.
//  Copyright © 2015 Appliest LLC. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "sad":
                    hvc.happiness = 0
                case "happy":
                    hvc.happiness = 100
                case "nothing":
                    hvc.happiness = 25
                default:
                    hvc.happiness = 50
                }
            }
        }
    }
    
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

