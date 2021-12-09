//
//  ViewController.swift
//  UpdateDataOnCustomCell
//
//  Created by Mac on 06/10/21.
//

import UIKit

class ViewController: UIViewController {
 var nameArray = ["kalyani","divya","omakar","ajinkya","umesh"]
    var ageArray = ["22","22","21","25","23"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}
//MARK:UITableViewDelegate,UITableViewDataSource
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as? TableViewCell1 else{
            return UITableViewCell()
        }
        cell.nameLabel.text = nameArray[indexPath.row]
        
        cell.ageLabel.text = ageArray[indexPath.row]
        cell.iPath = indexPath
        cell.delegate = self
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }

}

extension ViewController: TableViewProtocol{
    func buttonTapped(_ name: String?, _ age: String?, _ index: IndexPath?) {
        if let vc2 = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2{
            vc2.nameData = name
            vc2.ageData = age
            vc2.ip = index
           vc2.delegate = self
            self.navigationController?.pushViewController( vc2, animated: true)
        }
    }
}
extension ViewController: viewControllerProtocol{
    func dataPassing(name: String?, age: String?, ipath: IndexPath) {
        nameArray[ipath.row] = name!
        ageArray[ipath.row] = age!
        self.tableView.reloadRows(at: [ipath], with: .automatic)
    }
    
    
        
    }
    
    
   
    

