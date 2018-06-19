//
//  RegisterViewController.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController,DataHolderDelegate {
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPassword:UITextField?
    @IBOutlet var txtRePassword:UITextField?
    @IBOutlet var btnAceptar:UIButton?
    @IBOutlet var btnCancelar:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail?.text = Dataholder.sharedInstance.email
        txtUser?.text = Dataholder.sharedInstance.user
        txtPassword?.text = Dataholder.sharedInstance.pass
        txtRePassword?.text = Dataholder.sharedInstance.repass
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    @IBAction func clickRegister(){
        
        Dataholder.sharedInstance.email = (txtEmail?.text)!
        Dataholder.sharedInstance.user = (txtUser?.text)!
        Dataholder.sharedInstance.pass = (txtPassword?.text)!
        Dataholder.sharedInstance.repass = (txtRePassword?.text)!
        
        
        Dataholder.sharedInstance.Registro(delegate: self, sEmail: (txtEmail?.text)!, sPass: (txtPassword?.text)!)
        
        
    }
    func dataHolderRegister(blfin: Bool) {
        if blfin==true{
            self.performSegue(withIdentifier: "trregistro", sender: self)
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
}
