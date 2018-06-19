//
//  Ciudades.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class Ciudades: NSObject {
    let IDCAPITAL = "capital"
    let IDCOUNTY = "country"
    let IDNAME = "name"
    let IDPOPULATION = "population"
    let IDSTATE = "state"
    let IDfoto = "foto"
    
    
    var sID:String?
    var sCapital:String?
    var sCountry:String?
    var sName:String?
    var iPop:Int?
    var sState:String?
    var sfoto:String?
    
    func setMap(valores:[String:Any]) {
        sCapital = valores[IDCAPITAL] as? String
        sCountry = valores[IDCOUNTY] as? String
        sName = valores[IDNAME] as? String
        iPop = valores[IDPOPULATION] as? Int
        sState = valores[IDSTATE] as? String
        sfoto = valores[IDfoto] as? String
        
        
    }
    
    func getMap() -> [String:Any] {
        return[
            IDCAPITAL: sCapital as Any ,
            IDCOUNTY: sCountry as Any,
            IDNAME: sName as Any,
            IDPOPULATION: iPop as Any,
            IDSTATE: sState as Any
        ]
    }
}
