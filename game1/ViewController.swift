//
//  ViewController.swift
//  game1
//
//  Created by meshok on 27.05.2022.
//

import UIKit

class ViewController: UIViewController {

    let emojiCollection = ["🦐", "🐍", "🦐", "🐍"]
    
    var touches = 0 {
        didSet {
            touchesLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton (emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    
    @IBOutlet weak var touchesLabel: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }

    }
}

