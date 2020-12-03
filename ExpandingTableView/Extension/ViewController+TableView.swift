//
//  ViewController+TableView.swift
//  ExpandingTableView
//
//  Created by 민창경 on 2020/12/03.
//

import UIKit

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    //var item = ["a","b","c","d","e"]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return view.frame.height / 10
        }else{
            return view.frame.height / 5
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if items[section].open == true{
            return 1+1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath) as! TitleViewCell
            cell.lblTitle.text = items[indexPath.section].title
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell",for: indexPath) as!
            ContentViewCell
            cell.lblContent.text = items[indexPath.section].content
            
            return cell
        }
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? TitleViewCell else {return}
        guard let index = tableView.indexPath(for: cell) else {return}
        
        if index.row == indexPath.row{
            if index.row == 0{
                if items[indexPath.section].open == true{
                    items[indexPath.section].open = false
                    let section = IndexSet.init(integer: indexPath.section)
                    tableView.reloadSections(section, with: .fade)
                }else{
                    items[indexPath.section].open = true
                    let section = IndexSet.init(integer: indexPath.section)
                    tableView.reloadSections(section, with: .fade)
                }
            }
        }
        
    }

}
