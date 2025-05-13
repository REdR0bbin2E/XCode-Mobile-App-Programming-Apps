//
//  Athlete.swift
//  Favorite Athletes
//
//  Created by Akinyede, Mayowa O on 3/19/24.
//

import Foundation

struct Athlete
{
    var name = ""
    var age = 0
    var league = ""
    var team = ""
    
    var description: String
    {
     return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
