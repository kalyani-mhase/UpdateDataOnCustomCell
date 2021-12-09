//
//  TableViewProtocol.swift
//  UpdateDataOnCustomCell
//
//  Created by Mac on 06/10/21.
//

import Foundation
protocol TableViewProtocol: AnyObject{
    func buttonTapped(_ name: String?,_ age: String?,_ index: IndexPath?)
}
