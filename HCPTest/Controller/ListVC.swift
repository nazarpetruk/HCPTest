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
    let nicole = Doctor(firstName: "Nicole", lastName: "Waschak", middleName: "C", credentials: "M.D.", enumerationDate: "2012-07-01", status: "A", countryName: "United States", address: "11333 Sepulveda BLVD", city: "Mission Hills", state: "CA", phoneNumber: "818-365-9531", licenceNmbr: "1346411245")
    let thomas = Doctor(firstName: "Thomas", lastName: "Hummer", middleName: "MC", credentials: "M.D.", enumerationDate: "2011-03-08", status: "A", countryName: "United States", address: "1123 Shiltu Str.", city: "New York", state: "WA", phoneNumber: "567-089-245", licenceNmbr: "145627782")
    let diana = Doctor(firstName: "Diana", lastName: "Copenhart", middleName: "D", credentials: "M.D.", enumerationDate: "2012-09-08", status: "N", countryName: "United States", address: "1203 Wild Street", city: "Los Angeles", state: "LA", phoneNumber: "3554-789-123", licenceNmbr: "56337299201")
    
    var selectedIndex = 0
    var doctorsArray = [Doctor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        doctorsArray.append(nicole)
        doctorsArray.append(thomas)
        doctorsArray.append(diana)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let detailVC = segue.destination as! DetailStaticTableView
            detailVC.contact = doctorsArray[selectedIndex]
        }
    }
    
    func listManage(array: [Doctor], selectedIndex : Int) -> String {
        let doc = array[selectedIndex]
        let fullName = doc.firstName + " " + doc.middleName + ". " + doc.lastName
        return fullName
    }
    
}

extension ListVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! ContactListCell
        cell.contactNameLbl.text = listManage(array: doctorsArray, selectedIndex: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.doctorsArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}


