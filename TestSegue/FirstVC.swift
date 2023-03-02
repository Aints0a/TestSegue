//
//  FirstVC.swift
//  TestSegue
//
//  Created by Jean Yves Kaliva on 3/2/23.
//

import UIKit

class FirstVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    let anumber = ["ab","cd","ef"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC",
            let indexPath = tableView?.indexPathForSelectedRow,
            let destinationViewController:SecondVC =  segue.destination as? SecondVC {
            destinationViewController.letter = anumber[indexPath.row]
        }
    }
}
   

    extension FirstVC: UITableViewDelegate{
        
    }
    
extension FirstVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return anumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = anumber[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSecondVC", sender: self)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


