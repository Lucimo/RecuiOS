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

        Dataholder.sharedInstance.descargarCiudades(delegate: self)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func DHDDescargaCiudadesCompleta(blnFin: Bool){
        if blnFin == true{
            self.refreshUI()
        }
    }
    
    func refreshUI() {
        DispatchQueue.main.async(execute: {
            self.miTabla?.reloadData()
        })
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dataholder.sharedInstance.arCiudades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TvcmiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1")as! TvcmiCelda
        
        cell.lblNombre?.text = Dataholder.sharedInstance.arCiudades[indexPath.row].sName
        cell.descargarImagenes(uri: Dataholder.sharedInstance.arCiudades[indexPath.row].sfoto!)
        
        return cell
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
