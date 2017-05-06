//
//  EventInformation.swift
//  Final Project
//
//  Created by Brittany Foley on 4/27/17.
//  Copyright © 2017 Brittany Foley. All rights reserved.
//

import UIKit

class EventInformation: UIViewController {
    
    var titleString = ""
    var organizationString = ""
    var locationString = ""
    var timeString = ""
    var costString = ""
    var descriptionString = ""

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var organizationLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleString
        organizationLabel.text = organizationString
        locationLabel.text = locationString
        timeLabel.text = timeString
        costLabel.text = costString
        descriptionLabel.text = descriptionString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    func updateUserInterface(eventData: Event) {
        titleLabel.text = eventData.title
        organizationLabel.text = eventData.organization
        locationLabel.text = eventData.location
        timeLabel.text = eventData.time
        costLabel.text = eventData.cost
        descriptionLabel.text = eventData.description
        
    }
    

}
