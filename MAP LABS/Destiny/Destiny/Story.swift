 
import Foundation
struct Story
{
    let title: String
    let choice1: String
    let choice1index: Int
    let choice2: String
    let choice2index: Int
    
    init(title: String, choice1: String, choice1index: Int, choice2: String, choice2index: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1index = choice1index
        self.choice2 = choice2
        self.choice2index = choice2index
    }
}
