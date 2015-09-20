//
//  ViewController.swift
//  War
//
//  Created by Bill on 9/12/15.
//  Copyright (c) 2015 Yueyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNameArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func restartButton(sender: UIButton) {
        //set the first card image back to start
        self.firstCardImageView.image = UIImage(named: "back")
        
        //set the second card image back to start
        self.secondCardImageView.image = UIImage(named: "back")
        
        //set the player score back to 0
        playerScoreTotal = 0
        self.playerScore.text = String(playerScoreTotal)
        
        //set the enemy score back to 0
        enemyScoreTotal = 0
        self.enemyScore.text = String(enemyScoreTotal)
        
    }
    
    @IBAction func playRoundTapped(sender: UIButton) {
        /*
        // Randomize a number for the first imageview
        var firstRandomNumber = arc4random_uniform(13) + 1
        
        // Construct a string with the random number
        var firstCardString:String = String(format: "card%i", firstRandomNumber)
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Randomize a number for the second imageview
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        // Construct a string with the random number
        var secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        // Set the second card image view to the asset corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        */
        
        
        
        // Randomize a number for the first imageview
        var firstRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var firstCardString:String = self.cardNameArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Randomize a number for the second imageview
        var secondRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var secondCardString:String = self.cardNameArray[secondRandomNumber]
        
        // Set the second card image view to the asset corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
        
            // TODO: first card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {
        
            // TODO: numbers are equal
        }
        else {
        
            // TODO: second card is larger
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
        
    }

}

