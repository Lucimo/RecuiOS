//
//  Dataholder.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class Dataholder: NSObject {
    static let sharedInstance:Dataholder = Dataholder()
    
    var fireStoreDB:Firestore?
   
   
   
    var fireStorage:Storage?
    var HMIMG :[String: UIImage]?=[:]
    
    
    var user:String = ""
    var email:String = ""
    var pass:String = ""
    var repass:String = ""
    
    func initFirebase(){
        FirebaseApp.configure()
        fireStoreDB = Firestore.firestore()
        fireStorage = Storage.storage()
        let citiesRef = fireStoreDB?.collection("coordenadas")
        citiesRef?.document().setData([
            "coordenadas": [90, 00],
            "titulo": "Testigo segundo try"
            ]
        )
        
 }
   
   func Login(delegate:DataHolderDelegate, sEmail:String, sContrasena:String) {
        print("Hola " + sEmail)
        
        Auth.auth().signIn(withEmail: sEmail, password: sContrasena) {(email, error) in
            if sEmail != ""{
                
                
                
                        
                        delegate.dataHolderLogin!(blfin: true)
                        
                    }
                
            else{
                print("Fallo al logearse")
                delegate.dataHolderLogin!(blfin: false)
            }
        }
    }
 
 
    
    func Registro(delegate:DataHolderDelegate,sEmail:String, sPass:String) {
        Auth.auth().createUser(withEmail: email, password: pass){
            (email, error)in
            if self.pass != self.repass{
                print("Las contraseñas no son iguales")
            }
            else if self.email != "" && self.user != ""{
                print ("Te registraste")
                
                
                delegate.dataHolderRegister!(blfin: true)
            }
            else{
                print(error!)
                delegate.dataHolderRegister!(blfin: false)
            }
        }
        
    }
   
    
    
}
@objc protocol DataHolderDelegate{
    
    @objc optional func dataHolderRegister(blfin:Bool)
    @objc optional func dataHolderLogin(blfin:Bool)
    
}


