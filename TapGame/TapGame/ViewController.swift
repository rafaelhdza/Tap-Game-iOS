//
//  ViewController.swift
//  TapGame
//
//  Created by Rafael Hernandez Almazan on 9/20/18.
//  Copyright © 2018 Rafael Hernandez Almazan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    
    var playerOneScore = 0
    var playerTwoScore = 0
   
    var isGameStarted = false
    
    @IBAction func start(_ sender: UIButton) {
        sender.isEnabled = false
        
        isGameStarted = true
        playerOneScore = 0
        playerTwoScore = 0
        
       let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
            sender.isEnabled = true
            self.isGameStarted = false
        }
    }
    @IBAction func playerOneTap(_ sender: Any) {
    playerOneScore += 1
        updateUI()
    }
    @IBAction func playerTwoTap(_ sender: Any) {
    playerTwoScore += 1
        updateUI()
    }
    func updateUI(){
        if isGameStarted {
            playerOneLabel.text = "Player 1 Score: \(playerOneScore)"
            playerTwoLabel.text = "Player 2 Score: \(playerTwoScore)"
        }
    }
}

