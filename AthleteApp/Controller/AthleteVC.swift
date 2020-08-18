//
//  AthleteVC.swift
//  AthleteApp
//
//  Created by Rohit Prajapati on 18/08/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import UIKit

class AthleteVC: UITableViewController {
    
    //MARK:- Properties
    var athletes: [Athlete] = Athlete.getSortedArray()
    
    
    //MARK:- Outlet
    @IBOutlet var athleteTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(athletes[indexPath.row].firstName) \(athletes[indexPath.row].lastName)"
        cell.detailTextLabel?.text = "Position: \(athletes[indexPath.row].position)"
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ToAthleteDetail", sender: athletes[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAthleteDetail" {
            if let athleteDetailVC = segue.destination as? AthleteDetailVC {
                athleteDetailVC.athlete = sender as? Athlete
            }
        }
    }

}
