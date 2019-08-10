//
//  ItemController.swift
//  ShoppingList
//
//  Created by Blake kvarfordt on 8/9/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation
import CoreData

class ItemController {
    
    // Singtoon
    static let shared = ItemController()
    
    var fetchedResultsController: NSFetchedResultsController<Item>
    
    // Fetch Request
    init() {
        let fetchRequest: NSFetchRequest<Item> = Item.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "title", ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        let controller: NSFetchedResultsController<Item> = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataStack.context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController = controller
        do {
            try fetchedResultsController.performFetch()
        } catch {
            print("error: \(error)")
        }
        return
    }
    
    // CRUD Methods
    func createItem(title: String, isComplete: Bool) {
        
    }
    
    func deleteItem(item: Item) {
        
    }
    
    func updateItem(title: String) {
        
    }
    
    func saveToPersistentStore() {
        
    }
}

