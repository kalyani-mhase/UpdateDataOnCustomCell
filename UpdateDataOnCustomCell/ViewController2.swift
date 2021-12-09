//
//  ViewController2.swift
//  UpdateDataOnCustomCell
//
//  Created by Mac on 06/10/21.
//

import UIKit

protocol viewControllerProtocol: AnyObject {
    func dataPassing(name: String?,age: String?,ipath: IndexPath)
}

class ViewController2: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    var nameData: String?
    var ageData: String?
    var ip: IndexPath?
    weak var delegate: viewControllerProtocol?
   @objc func backData() {
    delegate?.dataPassing(name: nameTextField.text, age: ageTextField.text, ipath: ip!)
    self.navigationController?.popViewController(animated: true)
        
    }

    
    override func viewDidLoad() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Update", style: .plain, target: self, action: #selector(backData))
        super.viewDidLoad()
        nameTextField.text = nameData
        ageTextField.text = ageData
       
    }
    

    

}
