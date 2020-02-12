//
//  DetailVC.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var credentialsLbl: UILabel!
    @IBOutlet weak var detailTableView: UITableView!
    
    var contact : Doctor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTableView.dataSource = self
        detailTableView.delegate = self
        detailTableView.reloadData()

    }
    

}
extension DetailVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "phoneNumberCell") as! PhoneNumberTableViewCell
            cell.phoneNbrLbl.text = contact.phoneNumber
            return cell
        }else if indexPath.row == 1 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "adressTableViewCell") as! AdressTableViewCell
            cell.adressLbl.text = contact.adress
            cell.cityLbl.text = contact.city
            cell.countryLbl.text = contact.countryName
            return cell
            
        }else if indexPath.row == 2 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "enumCell") as! EnumerationDateCellTableViewCell
            cell.enumDateLbl.text = contact.enumerationDate
            return cell
        }else if indexPath.row == 3 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "notesCell") as! NotesTableViewCell
            cell.noteCell.text = "Some great user notes about current Doctor. "
            return cell
        }else{
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "universalCell") as! UniversalExtraTableViewCell
            cell.universalLbl.text = "Send Messsage"
            return cell
        }
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 && indexPath.row == 2{
//            return 70
//        }else if indexPath.row == 1 && indexPath.row == 3{
//            return 110
//        }else {
//            return 70
//        }
//    }
}
