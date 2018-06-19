//
//  ViewController.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLoguear: UIButton!
   
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  /*  @IBAction func clickLogin() {
        Dataholder.sharedInstance.Login(delegate: self as! DataHolderDelegate, sEmail: (txtEmail?.text)!, sContrasena: txtPass.text!)
    }
    */
    func dataHolderLogin(blfin: Bool) {
        if blfin==true{
            self.performSegue(withIdentifier: "transitionLogin", sender: self)
        }
    }


}

