//
//  SecondVC.swift
//  TestSegue
//
//  Created by Jean Yves Kaliva on 3/2/23.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    var letter: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = letter

        // Do any additional setup after loading the view.
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
