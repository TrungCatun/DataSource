//
//  NumberData.swift
//  DataSource
//
//  Created by trung on 2018/08/03.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit
class NumberData: NSObject, UITableViewDataSource  {
     var arrayNumber = Array(1...3)
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arrayNumber[indexPath.row])
        return cell
    }
    
   
    
}
