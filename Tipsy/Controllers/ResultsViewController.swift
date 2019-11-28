//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Tobi Kuyoro on 27/11/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalResult = ""
    var numberOfPeople = 0
    var tip = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = "\(totalResult)"
        settingsLabel.text = "Split between 5 \(numberOfPeople), with a \(tip)% tip."
    }
    
    @IBAction func recelculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
