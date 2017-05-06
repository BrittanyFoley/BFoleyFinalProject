//
//  ViewController.swift
//  Final Project
//
//  Created by Brittany Foley on 4/24/17.
//  Copyright © 2017 Brittany Foley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var events = [Event]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.reloadData()
        
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "ToAllEvents" {
            let destination = segue.destination as! AllEvents
          destination.saved = self.events
    }
    
  
    }

@IBAction func unwind(_ sender: UIStoryboardSegue) {
    if let allEvents = sender.source as? AllEvents {
        let rows = allEvents.allEventsTableView.indexPathsForSelectedRows!.sorted()
        print(rows)
        self.events.removeAll()
        for i in rows {
            let temp = allEvents.events[i.row]
            self.events.append(temp)
        }
        self.tableView.reloadData()
    }
    
}
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = events[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tempEvent = events[indexPath.row]
        let VC = storyboard!.instantiateViewController(withIdentifier: "EventDetails") as! EventInformation
        VC.titleString = tempEvent.title
        VC.organizationString = tempEvent.organization
        VC.locationString = tempEvent.location
        VC.timeString = tempEvent.time
        VC.costString = tempEvent.cost
        VC.descriptionString = tempEvent.description
        
        self.show(VC, sender: self)
        
    }
}


