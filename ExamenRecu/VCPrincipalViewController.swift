//
//  VCPrincipalViewController.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class VCPrincipalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DataHolderDelegate {

    @IBOutlet weak var miTabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DataHolder.sharedInstance.descargarCiudades(delegate: self)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}