//
//  ContactsViewController.swift
//  contactsapp
//
//  Created by Urmil Shah on 9/7/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    struct Contact {
        var name: String
        var surname: String
        var phoneNumber: Int
    }
    
    
    ///Contacts array holding the contact objects
    
    var allContacts: [Contact] = []
    ///var allContacts = [Contact]()
    
    ///MARK - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    ///MARK: Table View Data Source
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
        ///MARK: -  IBAction

    @IBAction func addBarButtonPressed(_ sender: Any) {
        print("Add new Item")
        showAlertController()
        
    }
    
    
    ///MARK: Helpers
    
    
    func showAlertController() {
        
        
        ///Alert Controller
        
        let alertController = UIAlertController(title: "Create New Contact", message: nil, preferredStyle: .alert)
        
        
        
        ///Creating the alert controller textfields
        
        
    alertController.addTextField { (nameTextField) in
            
        nameTextField.placeholder = "Name"
        
        }
        
        
        
    alertController.addTextField { (surnameTextField) in
        surnameTextField.placeholder = "Surname"
    }
        
        
        
        alertController.addTextField { (phoneNumberTextField) in
            phoneNumberTextField.placeholder = "Phone"
            phoneNumberTextField.keyboardType = .numberPad
          }
        
        
        ///Save and Cancel Actions
        
        let saveButton = UIAlertAction(title: "Save", style: .default) { (action) in
            
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        
        
        alertController.addAction(saveButton)
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    

}
