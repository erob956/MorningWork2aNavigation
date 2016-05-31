//
//  LoggedInViewController.swift
//  MorningWork2aNavigation
//
//  Created by Erik Roberts on 5/31/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let pieceOfWelcomeMessage = UserController.sharedInstance.logged_in_user!.email
        //sharedInstance is a static method that returns the EXACT SAME instance
        
        greetingLabel.text = "Welcome \(pieceOfWelcomeMessage)"
        // Do any additional setup after loading the view.

    }

    @IBAction func logOutTapped(sender: UIButton) {
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
        
        appDelegate.navigateBackToLandingViewController()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
