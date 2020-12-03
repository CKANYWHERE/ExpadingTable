//
//  ViewController.swift
//  ExpandingTableView
//
//  Created by 민창경 on 2020/12/03.
//

import UIKit

class ViewController: UIViewController {
    
    var items = [
        Title(title: "title1", content: "content1"),
        Title(title: "title2", content: "content2"),
        Title(title: "title3", content: "content3"),
        Title(title: "title4", content: "content4"),
        Title(title: "title5", content: "content5")
    ]
    
    var tableView = UITableView()
    var isCollaspe = false
    var SelectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(TitleViewCell.self, forCellReuseIdentifier: "titleCell")
        self.tableView.register(ContentViewCell.self, forCellReuseIdentifier: "contentCell")

        setupLayout()
    }
    
    func setupLayout(){
        tableView.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.width.height.equalToSuperview()
        }
    }
}

