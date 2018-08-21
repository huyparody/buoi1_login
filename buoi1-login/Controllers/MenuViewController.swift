//
//  MenuViewController.swift
//  buoi1-login
//
//  Created by Huy Trinh Duc on 8/21/18.
//  Copyright © 2018 Huy Trinh Duc. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! ImageTableViewCell
        cell.imgUser.image = UIImage(named: "george1")
        cell.lblName.text = "Trinh Duc Huy"
        return cell
    }
    
    

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
   

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
