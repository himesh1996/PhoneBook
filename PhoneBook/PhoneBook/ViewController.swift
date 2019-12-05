//
//  ViewController.swift
//  PhoneBook
//
//  Created by YB on 05/12/19.
//  Copyright © 2019 YB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tblContact: UITableView!
    
    var sections = [String]()
    
    var arrData = ["A": ["Anny marry", "Alan walker", "Angel martin", "Alex cus", "Advert rock", "Amid david", "Alanza math", "Alid mid"],
                   "B": ["Brooke martin", "Bobby bogon", "Bella billi", "Ben tenison", "Ben lara", "Bethany max", "Beatrice bory", "Blake logo"],
                   "C": ["Cade", "Cael Slim", "Caily B", "Christopher icon", "Caleb mealy", "Colton seltos", "Cayden mack", "Collin joy"],
                   "D": ["Duke jayson", "Daby bob", "Diana max", "Dabit card", "Dimate wit"],
                   "E": ["Elijah", "Ethan", "Easton", "Ezra", "Elias", "Everett", "Emerson", "Emerson"],
                   "F": ["Finley", "Finn", "Felix", "Francisco", "Fernando", "Finnegan", "Franklin"],
                   "G": ["Grayson", "Gavin", "Greyson", "George", "Giovanni", "Grant", "Graham", "Griffin"],
                   "H": ["Harper", "Henry", "Hudson", "Hayden", "Harrison", "Holden", "Hector", "Harlow"],
                   "I": ["Iacopo", "Iago", "Iain", "Iakob", "Iakovos", "Ian", "Ianto", "Iason"],
                   "J": ["Jacob", "Jackson", "Joseph", "John", "Joshua", "Jack"],
                   "K": ["Kabir", "Kace", "Kaddish", "Kade", "Kadeem", "Kaden", "Kadir", "Kaede"],
                   "L": ["Liam", "Lucas", "Luke", "Levi", "Lincoln", "Landon", "Leo", "Leonardo"],
                   "M": ["Matthew", "Mateo", "Miles", "Maddox", "Maverick", "Malachi"],
                   "N": ["Noah", "Nathan", "Nicholas", "Nathaniel", "Nicolas", "Nash", "Nehemiah", "Nasir"],
                   "O": ["Oliver", "Owen", "Oscar", "Omar", "Orion", "Oakley", "Odin", "Omari"],
                   "P": ["Paavo", "Pablo", "Pace", "Pacen", "Pacey", "Packer", "Paco"],
                   "Q": ["Quinton", "Quintin", "Quinten", "Quinlan", "Quinto"],
                   "R": ["Robert", "Roman", "Ryder", "River", "Ryker", "Richard", "Remington", "Rhett"],
                   "S": ["Samuel", "Sebastian", "Sawyer", "Santiago", "Silas", "Steven", "Simon"],
                   "T": ["Thomas", "Theodore", "Timothy", "Tucker", "Tanner", "Tobias", "Travis", "Titus"],
                   "U": ["Ubaldo", "Uberto", "Uchenna", "Uddhav"],
                   "V": ["Vincent", "Victor", "Valentino", "Vicente", "Vincenzo", "Vaughn", "Valentin"],
                   "W": ["William", "Wyatt", "Wesley", "Weston", "Waylon", "Walter"],
                   "X": ["Xavier", "Xander", "Xavi", "Xavion", "Xayvion", "Xerxes"],
                   "Y": ["Yusuf", "Yosef", "Yahya"],
                   "Z": ["Zachary", "Zion", "Zane", "Zachariah", "Zeke"]]
    
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sections = getKeys()
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    func getKeys() -> [String] {
        var section = [String]()
        for (key, _) in arrData {
            section.append(key)
        }
        let filtered = section.sorted(by: { $0 <= $1 } )
        return filtered
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sections
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = sections[section]
        label.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.4554794521)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont(name: "System-Bold", size: 15)
        return label
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData[sections[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTblCell") as! ContactTblCell
        cell.textLabel?.text = arrData[sections[indexPath.section]]![indexPath.row]
        cell.textLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objtab = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(objtab, animated: true)
    }
}
