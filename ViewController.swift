//
//  ViewController.swift
//  correctECCedit
//
//  Created by Leona  Meharenna on 7/27/21.
// edited by grace on 7/27 -

import UIKit
import SafariServices

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SFSafariViewControllerDelegate {
        
    
    @IBOutlet weak var dateLb: UILabel!
    //@IBOutlet var websiteButton: UIButton!
    
        
    var volunteerOpp : [todaysCells] = []

    @IBOutlet weak var volunteerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        volunteerTableView.dataSource = self
        volunteerTableView.delegate = self
        
        //removing separator in table view
        volunteerTableView.separatorStyle = .none
        
        /* Greater Chicago Food Depository: https://www.chicagosfoodbank.org/volunteer/
         https://volunteers.chicagosfoodbank.org/index.php?section=IndividualOpportunities&action=calendar
 */
 
        //todays opportunities array
        let item1 = todaysCells(name: "Lakeview Pantry", website: "https://www.lakeviewpantry.org/volunteer/", address: "Address: 3945 N Sheridan Rd, Chicago, IL 60613")
        let item2 = todaysCells(name: "Ravenswood Pantry", website: "https://ravenswoodcommunityservices.org/volunteer/", address: "Address: 4550 N Hermitage Ave, Chicago, IL 60640")
        let item3 = todaysCells(name: "Pilsen Food Pantry", website: "https://volunteer-pilsenfoodpantry.as.me/schedule.php", address: "Address: 1850 S Throop St, Chicago, IL 60608")
        let item4 = todaysCells (name: "Irving Park Pantry", website: "http://irvingparkfoodpantry.com/volunteer/", address: "Address: 3801 N Keeler Ave, Chicago, IL 60641")
        let item5 = todaysCells(name: "The Friendship Center", website: "https://friendshipcenterchicago.org/ways-to-help/volunteer", address: "Address: 2711 W Lawrence Ave, Chicago, IL 60625")
        let item6 = todaysCells(name: "Common Pantry", website: "https://www.commonpantry.org/volunteer/", address: "Address: 3744 N Damen Ave, Chicago, IL 60618")
        let item7 = todaysCells (name: "New Hope Pantry", website: "https://www.newhopefoodpantry.com/volunteer", address: "Address: 7115 W Hood Ave, Chicago, IL 60631")
        let item8 = todaysCells (name: "Beyond Hunger", website: "https://www.gobeyondhunger.org/volunteer", address: "Address: 848 Lake St, Oak Park, IL 60301")
        volunteerOpp = [item1,item2,item3,item4,item5,item6,item7,item8]
        let item9 = todaysCells (name: "Simple Pantry", website: "https://www.gobeyondhunger.org/volunteer", address: "Address: 848 Lake St, Oak Park, IL 60301")
        volunteerOpp = [item1,item2,item3,item4,item5,item6,item7,item8,item9]
        
                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return volunteerOpp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = volunteerTableView.dequeueReusableCell(withIdentifier: "volunteerCell") as! VolunteerTVC
        let volunteer = volunteerOpp[indexPath.row]
                
        cell.volunteerExample.text = volunteer.name
        cell.volunteerDescrip.text = volunteer.address
        
        //make cell look round
        cell.volunteerView.layer.cornerRadius = 10
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
        let urlString = self.volunteerOpp[indexPath.row]
        if let url = URL(string: volunteerOpp[indexPath.row].website)
            {
                UIApplication.shared.openURL(url)
            }
        }
    
    
/*    //websitecode
    @available(iOS 9.0, *)
   /* @IBAction func safariBtnClick(_ sender: UIButton,indexPath: IndexPath) {
        let volunteer = volunteerOpp[indexPath.row]
        var urlIndexed = volunteer.website!
        
        let myUrl = URL(string: urlIndexed)!
        let sVC = SFSafariViewController (url: myUrl)
        sVC.delegate = self
        self.present (sVC,animated: true,completion: nil)
    }*/
    func safariBtnClick(with title: String,indexPath: IndexPath) {
        let volunteer = volunteerOpp[indexPath.row]
        var urlIndexed = volunteer.website!
        
        let myUrl = URL(string: urlIndexed)!
        let sVC = SFSafariViewController (url: myUrl)
        sVC.delegate = self
        self.present (sVC,animated: true,completion: nil)
    }
 */
}


//extension tableview stuff !!!!! i took it out and put it in the normal viewcontroller class

/*extension ViewController: UITableViewDataSource, UITableViewDelegate {
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
   
}*/



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
    

