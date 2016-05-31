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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pieceOfWelcomeMessage = UserController.sharedInstance.logged_in_user!.email
        //sharedInstance is a static method that returns the EXACT SAME instance
        
        greetingLabel.text = "Welcome \(pieceOfWelcomeMessage)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
