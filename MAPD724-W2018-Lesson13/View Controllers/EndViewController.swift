import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var EndScreenLabel: UILabel!
    
    @IBOutlet weak var BackButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        MoveButtonOver()
        AnimateLabelMoveUp()
        AnimateLabelMoveDownAndRepeat()
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 2, delay: 0.25,
                       options: [.curveEaseIn], animations: {
                        self.BackButton.center.x -= 100
        }, completion: nil)
    }
    
    func AnimateLabelMoveUp() {
        UIView.animate(withDuration: 1, delay: 1,
                       options: [.curveEaseInOut], animations: {
                        self.EndScreenLabel.center.y -= 250
        }, completion: nil)
    }
    
    func AnimateLabelMoveDownAndRepeat() {
        UIView.animate(withDuration: 1, delay: 1,
                       options: [.repeat, .autoreverse], animations: {
                        self.EndScreenLabel.center.y += 250
        }, completion: nil)
    }
    
}
