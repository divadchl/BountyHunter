//
//  CustomTextField.swift
//  BountyHunter
//
//  Created by Infraestructura on 01/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit


class CustomTextField: UITextField {

    var size: CGFloat?
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.backgroundColor = Constantes.COLOR_FONDO
        self.textColor = UIColor.whiteColor()
        self.font = UIFont(name: "Champagne&Limousines", size: Constantes.FUENTE_TEXTFIELD)
        //self.attributedPlaceholder = NSAttributedString(name: "Champagne&Limousines-BOLD", size: Constantes.FUENTE_TEXTFIELD)
        //self.layer.backgroundColor = Constantes.COLOR_ETIQUETAS.CGColor
        self.layer.cornerRadius = rect.size.height / 4
        
        /*
         Invocamos el método de la super clase al final,  para que cuando dibujela etiqueta
         ya tenga todas las configuraciones
         */
        super.drawRect(rect)
        
        let attributes = [
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName : UIFont(name: "Champagne&Limousines-Bold", size: Constantes.FUENTE_TEXTFIELD)! // Note the !
        ]
        
        var placeholderOriginal  = self.placeholder
        if placeholderOriginal == nil{
            placeholderOriginal = ""
        }
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderOriginal!, attributes:attributes)
        
    }
    

}
