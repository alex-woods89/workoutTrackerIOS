//
//  ChestAndTricepsViewController.swift
//  workoutTracker
//
//  Created by Alex Woods on 16/09/2020.
//  Copyright © 2020 Alex Woods. All rights reserved.
//

import UIKit

class LegsTableViewController: UITableViewController {

    //MARK: Properties
    
    var excersizes = [Excersize]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleExcersizes()
    }
    
    private func loadSampleExcersizes() {
        let excersize1 = Excersize(name: "Lying Leg Curl", reps: "8-12", sets: "2")
        let excersize2 = Excersize(name: "Smith Squat", reps: "8", sets: "3")
        let excersize3 = Excersize(name: "Bulgarian Squat", reps: "12 ES", sets: "2")
        let excersize4 = Excersize(name: "Glute Bridges", reps: "10", sets: "3")
        let excersize5 = Excersize(name: "Leg Extensions", reps: "10", sets: "3")
        let excerzise6 = Excersize(name: "RDLs", reps: "10", sets: "3")
        let excersize7 = Excersize(name: "Hip Abductors", reps: "12", sets: "3")
        
        excersizes += [excersize1, excersize2, excersize3, excersize4, excersize5, excerzise6, excersize7]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return excersizes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExcersizeTableViewCell", for: indexPath) as? ExcersizeTableViewCell else {
            fatalError("The dequeued cell is not an instance of ExcersizeTableViewCell")
        }
        
        let excercise = excersizes[indexPath.row]
        
        cell.excersizeNameLabel.text = excercise.name
        cell.setsLabel.text = "Sets: \(excercise.sets)"
        cell.repsLabel.text = "Reps: \(excercise.reps)"
        
        return cell
    }
    
    

}

