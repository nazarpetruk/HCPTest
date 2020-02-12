//
//  ViewController.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import UIKit

class ListVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - VARIABLES
    let nicole = Doctor(firstName: "Nicole", lastName: "Waschak", middleName: "C", credentials: "M.D.", enumerationDate: "2012-07-01", status: "A", countryName: "United States", address: "11333 Sepulveda BLVD", city: "MISSION HILLS", state: "CA", phoneNumber: "818-365-9531")
    var selectedIndex = 0
    var doctorsArray = [Doctor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        doctorsArray.append(nicole)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let detailVC = segue.destination as! DetailVC
            detailVC.contact = doctorsArray[selectedIndex]
        }
    }
    
}

extension ListVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! ContactListCell
        cell.contactNameLbl.text = nicole.firstName + " " + nicole.middleName + ". " + nicole.lastName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "toDetail", sender: self)
    }
}


