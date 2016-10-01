//
//  DBManager.swift
//  BountyHunter
//
//  Created by Infraestructura on 01/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import Foundation
import CoreData

class DBManager{
    
    //Declaraciòn del singleton
    static let instance = DBManager()
    
    
    
    
    // si hay dos o mas argumentos, del segundo en adelante, el identificador del paràmetro se debe usar como etiqueta al invocar el método
    // func encuentraTodosLos(nombreEntidad: String, ordenadosPor: String)->NSArray{
    
    // Si no quiero que aparezca los identificadores como etiquetas, se agregan los caracteres "_ " antes de cada identificador
    
    func encuentraTodosLos(nombreEntidad: String, _ ordenadosPor: String)->NSArray{
        
        
        
        
        return NSArray()
    }
    
    lazy var managedObjectContext: NSManagedObjectContext? = {
        let persistence = self.persistentStore
        if persistence == nil{
            return nil
        }
        
        var moc = NSManagedObjectContext(concurrencyType: PrivateQueueConcurrencyType)
        moc.persistentStoreCoordinator = persistence
        return moc
        
    }()
    
    
    lazy var managedObjectModel: NSManagedObjectModel? = {
        let modelURL = NSBundle.mainBundle().URLForResource("BountyHunter", withExtension: "momd")
        var model = NSManagedObjectModel(contentsOfURL: modelURL)
        return model
    }()
    
    lazy var persistentStore: NSPersistentStoreCoordinator? = {
        let model = self.managedObjectModel
        if model == nil
        {
            return nil
        }
        
        let persist = NSPersistentStoreCoordinator(managedObjectModel: model!)
        
        return persist
    }()
    
    
    
}

