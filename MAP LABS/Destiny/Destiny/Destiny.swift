//
//  Destiny.swift
//  Destiny
//
//  Created by Akinyede, Mayowa O on 9/15/23.
//

import Foundation
struct Destiny
{
    
    
    var currentStory: Int = 0
    
    let stories = [
        
        Story(title: "Its a beautiful day outside, and you've just been released from school. What do you plan on doing afterwards?", choice1: "walk home", choice1index: 2, choice2: "stay afterschool and study for your upcoming test", choice2index: 6),
        
        Story(title: "on your way home you encounter something strange. It seems to be someone who's absolutely lost it and is eating out of a trashcan..", choice1: "take a closer look", choice1index: 4, choice2: "keep walking", choice2index: 3),
                   
        Story(title: "As you continue walking home, suddently a earthquake happens and the ground opens up!", choice1: "sprint home", choice1index: 3, choice2: "get in the fetal position", choice2index: 2),
                   
        
                   Story(title: "u inch closer and suddently the man starts charging you.!", choice1: "run away", choice1index: 2, choice2: "fend off the man", choice2index: 2),
        
        
                   
        
                   Story(title: "You try and fend off the crazed man but you shouldn't have skipped the gym.!", choice1: "the", choice1index: -1, choice2: "end", choice2index: -1),
        
        
        Story(title: "While your studying in the empty library, all of the lights suddently flick off...", choice1: "exit the library and investigate", choice1index: 7, choice2: "use your phone light and ignore it", choice2index: 8),
        
        Story(title: "As your creeping through the dark and ominous library, you come across a shadowy figure...", choice1: "exit the library and investigate", choice1index: 4, choice2: "use your phone light and ignore it", choice2index: 4),
        
        Story(title: "As your wraping up your studying, you hear distinct footsteps getting closer and closer...", choice1: "exit the library and investigate", choice1index: 4, choice2: "use your phone light and ignore it", choice2index: 4),
        
    ]
    func getTitle() -> String
    {
        return stories[currentStory].title
    }
    func getChoice1() -> String
    {
        return stories[currentStory].choice1
    }
    func getChoice2() -> String
    {
        return stories[currentStory].choice2
    }
}
