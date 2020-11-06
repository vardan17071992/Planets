//
//  ViewController.swift
//  Planets
//
//  Created by MacBook Air on 06.11.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let planets = ["Mercury", "Venera", "Erkir", "Mars", "Jupiter", "Saturn", "Uran", "Neptun"]
    
    @IBOutlet weak var PlanetsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlanetsTableView.delegate = self
        PlanetsTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.image1.image = UIImage(named: planets[indexPath.row])
        cell.label1.text = planets[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "show1", sender: planets[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? NewViewController
        vc?.mySpace = sender as? String
    }
}


