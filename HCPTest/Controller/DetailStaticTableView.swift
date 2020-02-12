//
//  Detail.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import UIKit
import MapKit

class DetailStaticTableView: UITableViewController {
    
    @IBOutlet weak var contactImg: UIImageView!
    @IBOutlet weak var contactFullNameLbl: UILabel!
    @IBOutlet weak var contactCrudentialsLbl: UILabel!
    @IBOutlet weak var phoneNumbrLbl: UILabel!
    @IBOutlet weak var contactCountryLbl: UILabel!
    @IBOutlet weak var contactStreet: UILabel!
    @IBOutlet weak var contactCity: UILabel!
    @IBOutlet weak var enumDate: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var contact : Doctor!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfActive()
        viewSetUp()
    }
    
    
    func viewSetUp() {
        contactFullNameLbl.text = contact.firstName + " " + contact.lastName
        phoneNumbrLbl.text = contact.phoneNumber
        contactCrudentialsLbl.text = contact.credentials + " " + contact.licenceNbr
        contactCountryLbl.text = contact.countryName
        contactCity.text = contact.city
        contactStreet.text = contact.adress
        enumDate.text = contact.enumerationDate
    }
    
    func checkIfActive(){
        if contact.status != "A" {
            let alert = UIAlertController(title: "Alert", message: "This contact is currently not active", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

}
