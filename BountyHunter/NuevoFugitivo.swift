//
//  NuevoFugitivo.swift
//  BountyHunter
//
//  Created by Infraestructura on 08/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit
import CoreData

class NuevoFugitivo: UIViewController {

    @IBOutlet weak var txfNombre: UITextField!
    @IBOutlet weak var txfDelito: UITextField!
    @IBOutlet weak var txfRecompensa: UITextField!
    var strMensaje: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnGuardar(sender: AnyObject) {
        
        let strNombre: String = txfNombre.text!
        let strDelito: String = txfDelito.text!
        let strRecompensa: String = txfRecompensa.text!
        
        
        if strNombre.isEmpty
        {
            strMensaje = "Falta el nombre"
            
        }else if strDelito.isEmpty
        {
            strMensaje = "Falta el Delito"
            
        }else if strRecompensa.isEmpty
        {
            strMensaje = "Falta la Recompensa"
            
        }
        
        if strMensaje != ""{
        
            let ac: UIAlertController = UIAlertController(title: "Error", message: strMensaje, preferredStyle: .Alert)
            
            let bac = UIAlertAction(title: "Ok", style: .Default, handler: nil)
            
            ac.addAction(bac)
            presentViewController(ac, animated: true, completion: nil)
            strMensaje=""
            return
        }else{
            let entityInfo = NSEntityDescription.entityForName("Fugitive", inManagedObjectContext: DBManager.instance.managedObjectContext!)
            let nuevoFugitivo = NSManagedObject.init(entity: entityInfo!, insertIntoManagedObjectContext: DBManager.instance.managedObjectContext!) as! Fugitive
            nuevoFugitivo.name = strNombre
            nuevoFugitivo.desc = strDelito
            nuevoFugitivo.bounty = NSDecimalNumber(string: strRecompensa)
            nuevoFugitivo.captured = false
            
            do{
                try DBManager.instance.managedObjectContext!.save()
                navigationController?.popViewControllerAnimated(true)
                
            }catch{
                print("Error al salvar la BD... what's up?")
            }
            
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
