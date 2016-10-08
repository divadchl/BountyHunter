//
//  ViewController.swift
//  BountyHunter
//
//  Created by Infraestructura on 01/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         Este codigo es util cuando no estamos seguros
         como se llama realmente una fuente
         OJO: el nombre del archivo no siempre coincide
         con el nomgre real de la fuente
        */
        
        for fontFamilyName in UIFont.familyNames(){
            print(fontFamilyName)
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName){
                print("\t\(fontName)")
            }
        }
        
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

