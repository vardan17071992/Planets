//
//  NewViewController.swift
//  Planets
//
//  Created by MacBook Air on 06.11.2020.
//

import UIKit

class NewViewController: UIViewController {
    var mySpace: String? = nil
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image2.image = UIImage(named: mySpace!)
        label2.text = mySpace
        
        
        label2.textColor = .red
        label2.backgroundColor = .black
        
    }
}
