//
//  NewEvent.swift
//  Final Project
//
//  Created by Brittany Foley on 4/24/17.
//  Copyright © 2017 Brittany Foley. All rights reserved.
//

import UIKit

class NewEvent: UIViewController {
    
    var eventSelected: Int?
    var event = EventData()
    

    @IBOutlet weak var eventTitleLabel: UITextField!
    @IBOutlet weak var organizationLabel: UITextField!
    @IBOutlet weak var timeLabel: UITextField!
    @IBOutlet weak var dateLabel: UITextField!
    @IBOutlet weak var descriptionLabel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
