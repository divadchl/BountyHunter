//
//  Fugitive+CoreDataProperties.swift
//  BountyHunter
//
//  Created by Infraestructura on 08/10/16.
//  Copyright © 2016 dacalo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Fugitive {

    @NSManaged var bounty: NSDecimalNumber?
    @NSManaged var captdate: NSTimeInterval
    @NSManaged var captured: Bool
    @NSManaged var capturedlat: Double
    @NSManaged var capturedlon: Double
    @NSManaged var desc: String?
    @NSManaged var fugitiveid: Int16
    @NSManaged var image: NSData?
    @NSManaged var name: String?

}
