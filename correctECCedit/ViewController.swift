//
//  ViewController.swift
//  correctECCedit
//
//  Created by Leona  Meharenna on 7/27/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var dateLb: UILabel!
    var volunteerOpp = ["Chicago Cares", "Roger Park Food Pantry", "Outdoor Booksale Volunteers", "Other Volunteer Opportunity", "Lollapalooza Volunteers", "Day Camp at Harbor Light", "RUSH Hospital Volunteer"]

    @IBOutlet weak var volunteerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        let dateString = formatter.string(from: Date())
        dateLb.text = "\(dateString)"
        volunteerTableView.dataSource = self
        volunteerTableView.delegate = self
        
        //removing seperator in table view
        volunteerTableView.separatorStyle = .none
    }
    
    

    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return volunteerOpp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = volunteerTableView.dequeueReusableCell(withIdentifier: "volunteerCell") as! VolunteerTVC
        let volunteer = volunteerOpp[indexPath.row]
        
        cell.volunteerExample.text = volunteer
        //make cell look round
        cell.volunteerView.layer.cornerRadius = 10
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
        
    }
    
    
}
//if you are in charge of creating a location/volunteer opportunity, your code goes here
class createScene: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
//code for the map goes here
class locationScene: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
//code for the login/profile page goes here
class profileScene: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}
