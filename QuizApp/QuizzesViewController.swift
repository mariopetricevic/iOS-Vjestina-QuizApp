//
//  QuizzesViewController.swift
//  QuizApp
//
//  Created by Five on 4/12/21.
//

import UIKit

class QuizzesViewController: UIViewController {

    
    @IBOutlet var quizzView: UIView!
    @IBOutlet weak var getQuizButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let data = DataService().fetchQuizes()
    var quizzes = [Quiz]()
    //let cell = UITableViewCell()
    //var quizzes = data.fetchQuizes()
    
    
    
    @IBAction func GetQuizButton(_ sender: Any) {
        
        
        tableView.reloadData()
       
        
        //tableView.dataSource = data
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        // Do any additional setup after loading the view.
        self.tableView.register(UINib.init(nibName: "QuizCell", bundle: nil), forCellReuseIdentifier: "cellSMT")
        
        tableView.dataSource = self
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
extension QuizzesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //let cell= UITableViewCell() as! QuizCell;
        let cell:QuizCell = self.tableView.dequeueReusableCell(withIdentifier: "cellSMT", for: indexPath) as! QuizCell
        
        cell.TitleLabel.text = data[indexPath.row].title;
        //cell.titleLabela?.text = data[indexPath.row].title;
        //cell.opisLabela?.text = data[indexPath.row].title;
        //cell.tezinaLabela?.text = data[indexPath.row].category.rawValue;
        
        
        //cell.isHidden = true
        //cell.textLabel?.text = data[indexPath.row].description;
       
        
        return cell
    }
    
    
}
