//
//  TableViewCellmiCelda.swift
//  ExamenRecu
//
//  Created by LUCAS PAJARES PRIETO on 19/6/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class TableViewCellmiCelda: UITableViewCell, DataHolderDelegate{

    @IBOutlet var lblCelda: UILabel!
    @IBOutlet var img: UIImageView!
    var ImagenDescargada:UIImage?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func descargarImagenes(url:String){
        self.img?.image = nil
        Dataholder.sharedInstance.executeimagen(clave: url, delegate: self)
}
    func imagen(imagen: UIImage) {
        self.img?.image = imagen
}
}
