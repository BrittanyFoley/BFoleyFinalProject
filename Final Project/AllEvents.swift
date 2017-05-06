//
//  AllEvents.swift
//  Final Project
//
//  Created by Brittany Foley on 4/26/17.
//  Copyright © 2017 Brittany Foley. All rights reserved.
//

import UIKit

class AllEvents: UIViewController {
    
    

    @IBOutlet weak var allEventsTableView: UITableView!
    
    var events = [Event]()
    var saved = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var event1 = Event(title: "Stoked!", description: "A UGBC end of the year celebration", time: "April 27th from 11:00 AM - 3:00 PM", location: "Stokes Amphitheatre", organization: "UGBC", cost: "Free")
        var event2 = Event(title: "DSCVR: Diversity with Megan Rapinoe", description: "A talk with Olympic Gold Medalist Megan Rapinoe to hear about her experience in soccer, advocacy for LGBTQ+ rights and equal pay, and journey in creating an iconic, personal brand", time: "April 28th @ 1PM", location: "Heights Room", organization: "Marketing Academy", cost: "Free")
        var event3 = Event(title: "Interfaith Prayer Service for Immigrants", description: "A prayer of unity and solidarity with immigrants and refugees", time: "May 1st @ 6:00 PM", location: "Lannon Chapel, St. Ignatius Church", organization: "School of Theology and Ministry", cost: "Free")
        var event4 = Event(title: "Shea Venture Competition", description: "10 finalists of the annual Start @ Shea Venture Competition pitch their ventures in front of a panel of judges to win $30,000 in combined prizes!", time: "May 2nd from 3:30 PM - 6:00 PM", location: "Heights Room", organization: "Shea Center", cost: "Free")
        var event5 = Event(title: "Swing Is In The Air", description: "Full Swing's final social dance of the year, featuring live music by Compaq Big Band and choreographed dance performances", time: "May 3rd from 7:00 PM - 10:45 PM", location: "Heights Room", organization: "BC Full Swing", cost: "Free")
         var event6 = Event(title: "Student App Showcase", description: "BC Students showcase their original apps", time: "May 1st from 4:30 PM - 7:00 PM", location: "Fulton Honors Library", organization: "CSOM", cost: "Free")
         var event7 = Event(title: "Mudstock", description: "Mud Volleyball Tournament", time: "May 4th @ 10:00 AM", location: "Mod Lot", organization: "CAB", cost: "Free")
          var event8 = Event(title: "ModStock", description: "Louis the Child concert", time: "May 4th @ 4:30 PM", location: "Mod Lot", organization: "CAB", cost: "Free")
        events = [event1, event2, event3, event4, event5, event6, event7, event8]
        
        
        allEventsTableView.delegate = self
        allEventsTableView.dataSource = self
        
        allEventsTableView.allowsMultipleSelection = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension AllEvents: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = events[indexPath.row].title
        for i in saved {
            if i.title == events[indexPath.row].title {
                cell.accessoryType = .checkmark
                tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            }
        }

    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            }
        }
}
}



