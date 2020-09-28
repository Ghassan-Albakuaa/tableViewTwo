//
//  MainViewController.swift
//  HomeWork2App
//
//  Created by Ghassan  albakuaa  on 9/27/20.
//



import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var ListButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        self.mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.mainTableView.rowHeight = 50
        
       
    }
    


}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.random(in: 4...25)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        DispatchQueue.main.async {
            cell.textLabel?.text = "Cell Label for index \(indexPath)"
            cell.imageView?.image = UIImage(named: "question-mark")
            cell.tag = indexPath.row
        }
        
        return cell
    }
    
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)        // Navigation Logic here
        
       
        }
        
        
        
    }
    




/*
class MainViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    @IBOutlet weak var ListButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        self.mainTableView.register(UITableViewCell.self , forCellReuseIdentifier: "TableViewCell")
        self.mainTableView.rowHeight = 50
      
    }
    

    
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.random(in: 3...25)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
      //  DispatchQueue.main.async {
            cell.textLabel?.text = "cell for index \(indexPath)"
            cell.imageView?.image = UIImage(named: "a")
            cell.tag = indexPath.row
        
  // }
        
       
        return cell
    }
    
    
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
*/
