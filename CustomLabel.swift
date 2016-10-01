//
//  CustomLabel.swift
//  BountyHunter
//
//  Created by Infraestructura on 01/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    var size: CGFloat?
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        
        self.font = UIFont(name: "Champagne&Limousines-Bold", size: Constantes.FUENTE_TITULOS)
        self.backgroundColor = Constantes.COLOR_ETIQUETAS
        //self.layer.backgroundColor = Constantes.COLOR_ETIQUETAS.CGColor
        self.layer.cornerRadius = rect.size.height / 3
        self.textColor = Constantes.COLOR_TEXTOS
        /*
            Invocamos el método de la super clase al final,  para que cuando dibujela etiqueta
            ya tenga todas las configuraciones
        */
        super.drawRect(rect)
        
        
        
    }


}
