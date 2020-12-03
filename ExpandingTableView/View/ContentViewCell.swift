//
//  ContentViewCell.swift
//  ExpandingTableView
//
//  Created by 민창경 on 2020/12/03.
//

import Foundation
import UIKit

class ContentViewCell:UITableViewCell{
    
    lazy var lblContent = UILabel().then{
        $0.font = UIFont.systemFont(ofSize: 20)
        $0.textAlignment = .center
        $0.numberOfLines = -1
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(lblContent)
        setupContainerLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    func setupContainerLayout(){
        
        lblContent.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.left.right.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalToSuperview()
        }
    }
}
