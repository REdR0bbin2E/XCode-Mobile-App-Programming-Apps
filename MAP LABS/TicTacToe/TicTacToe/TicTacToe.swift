//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Akinyede, Mayowa O on 9/27/23.
//

import Foundation
struct TicTacToe
{
    
    
    static let Empty: String = ""
    static let Cross: String = "X"
    static let Circle: String = "O"
    static var currentTurn = ""
    
    
    
    var turn = 0
    
  
    
   // var CrossAndCircle: [String] = [Cross,Circle]
    
    
    var currentTurn: String = Cross
    
    
    
    var board: [String] = [Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty]
    
    //FINISH THIS
    func CheckforWin()-> Bool
    {
       
            if(board[0] == board[1] && board[0] != "" && board[1] != "" && board[0] == board[2] && board[2] != "")
            {
               
                return true
            }
            else if(board[0] == board[4] && board[0] != "" && board[4] != "" && board[0] == board[8] && board[8] != "")
            {
              
                return true
            }
            else if(board[0] == board[3] && board[0] != "" && board[3] != "" && board[0] == board[6] && board[6] != "")
            {
               
                return true
            }
        else if(board[1] == board[4] && board[1] != "" && board[4] != "" && board[1] == board[67] && board[7] != "")
        {
            
            return true
        }
        else if(board[3] == board[4] && board[3] != "" && board[4] != "" && board[3] == board[5] && board[5] != "")
        {
           
            return true
        }
        else if(board[2] == board[5] && board[2] != "" && board[5] != "" && board[2] == board[8] && board[8] != "")
        {
         
            return true
        }
        else if(board[6] == board[7] && board[6] != "" && board[7] != "" && board[6] == board[8] && board[8] != "")
        {
           
            return true
           
        }
        else if(board[2] == board[4] && board[2] != "" && board[4] != "" && board[2] == board[6] && board[6] != "")
        {
            
            return true
         
        }
        return false
    }
    
    
   
    
    
    
    
    
    
    
    
    
  
    
    
    
   
 
    
    
}
