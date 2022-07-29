//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Алексей Гайдуков on 29.07.2022.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do list"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(tapAdd))
    }
    
    @objc private func tapAdd() {
        let alert = UIAlertController(title: "New list", message: "Enter new list", preferredStyle: .alert)
        alert.addTextField { field in
            field.placeholder = "Enter... "
        }
        alert.addAction(UIAlertAction(title: "Cancle", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { _ in
            if let field = alert.textFields?.first{
                if let text = field.text, !text.isEmpty {
                    
                }
            }
        }))
        present(alert, animated: true)
    }
    
  

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)


        return cell
    }
}
