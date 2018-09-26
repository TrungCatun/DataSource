//
//  StringData.swift
//  DataSource
//
//  Created by trung on 2018/08/03.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit
class StringData: NSObject, UITableViewDataSource {
    var arrayString = ["a", "b", "c"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = arrayString[indexPath.row]
    return cell
    }

    
}
