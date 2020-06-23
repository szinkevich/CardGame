//
//  ViewController.swift
//  WarCardGame
//
//  Created by iOS on 6/23/20.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var aiScoreLabel: UILabel!
    
    var aiScore = 0
    var playerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else if leftNumber == rightNumber {
            playerScore -= 1
            aiScore -= 1
            playerScoreLabel.text = String(playerScore)
            aiScoreLabel.text = String(aiScore)
        }
        else if leftNumber < rightNumber {
            aiScore += 1
            aiScoreLabel.text = String(aiScore)
        }
    }

}

