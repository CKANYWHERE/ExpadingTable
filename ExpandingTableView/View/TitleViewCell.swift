//
//  TableViewCell.swift
//  ExpandingTableView
//
//  Created by 민창경 on 2020/12/03.
//

import UIKit

class TitleViewCell:UITableViewCell{
    
    lazy var containerView = UIView()
    
    lazy var lblTitle = UILabel().then{
        $0.font = UIFont.systemFont(ofSize: 30)
        $0.textAlignment = .center
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(containerView)
        
        setupViewLayout()

        containerView.addSubview(lblTitle)
       
    
        setupContainerLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewLayout(){
        
        containerView.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalToSuperview()
        }
    }
    
    func setupContainerLayout(){
        lblTitle.snp.makeConstraints{
            $0.top.equalTo(containerView).offset(2)
            $0.left.right.equalTo(containerView)
            $0.width.equalTo(containerView)
            $0.height.equalTo(containerView)
        }
        
    }
}
