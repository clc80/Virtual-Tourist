//
//  DataSource.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation
import CoreData

struct DataSource {
    
    static func retrieve<T: NSManagedObject>(entityClass: T.Type,
                                             context: NSManagedObjectContext,
                                             sortBy: String? = nil,
                                             isAscending: Bool = true,
                                             predicate: NSPredicate? = nil) -> [T]? {
        let entityName = NSStringFromClass(entityClass)
        let request    = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        
        request.returnsObjectsAsFaults = false
        request.predicate = predicate
        
        if (sortBy != nil) {
            let sorter = NSSortDescriptor(key:sortBy , ascending:isAscending)
            request.sortDescriptors = [sorter]
        }
        
        let commits = try? context.fetch(request) as! [T]
        return commits
        
    }
    
}
