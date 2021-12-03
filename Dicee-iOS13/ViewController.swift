import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageLeft: UIImageView!
    @IBOutlet weak var diceImageRight: UIImageView!
    
    var diceImagesArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceFive")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollTheDiceButtonPress(_ sender: UIButton) {
        if (diceImagesArray.count != 0) {
            let leftRandomNum = Int.random(in: 0...4)
            
            diceImageLeft.image = diceImagesArray[leftRandomNum]
            diceImageRight.image = diceImagesArray.randomElement()
        }
        
    }
}

