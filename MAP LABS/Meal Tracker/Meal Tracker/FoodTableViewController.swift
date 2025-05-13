//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Akinyede, Mayowa O on 4/23/24.
//

import Foundation
import UIKit

class FoodTableViewController: UITableViewController
{
    var meals : [Meal]
    {
       var breakfast1 = Meal(name: "breakfast", food: [Food(name: "pancakes", description: "f"),Food(name: "eggs", description: "f"),Food(name: "bacon", description: "f")])
        
        var lunch1 = Meal(name: "lunch", food: [Food(name: "sandwitch", description: "f"),Food(name: "taco", description: "f"),Food(name: "burrito", description: "f")])
        
        var dinner1 = Meal(name: "dinner", food: [Food(name: "pasta", description: "f"),Food(name: "salad", description: "f"),Food(name: "hamburger", description: "f")])
        
        
        return [breakfast1,lunch1,dinner1]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
        
    }
    
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.dequeueReusableCell(withIdentifier: "Food")
        
        var a = indexPath.section
        
        var b = indexPath.row
        
        return
        
        
       return
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(meals[section])"

    }
}

