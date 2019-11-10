//
//  IndDrinkViewController.swift
//  smartending
//
//  Created by Calli Sabaitis on 11/8/19.
//  Copyright © 2019 Calli Sabaitis. All rights reserved.
//

import UIKit

class IndDrinkViewController: UIViewController {
    
    var nameLabel: UILabel!
    var nameText: String
    var toolsLabel: UILabel!
    var toolsText: String
    
    let padding: CGFloat = 15
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //name label
        nameLabel = UILabel()
        nameLabel.textColor = .black
        nameLabel.text = nameText
        nameLabel.font = nameLabel.font.withSize(30)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        //tools label
        toolsLabel = UILabel()
        toolsLabel.textColor = .gray
        toolsLabel.text = toolsText
        toolsLabel.font = toolsLabel.font.withSize(20)
        toolsLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(toolsLabel)
        
        setupConstraints()
    }
    
    init(drink: Drink){
        nameText = drink.name
        toolsText = drink.getToolsList()
        super.init(nibName: nil, bundle: nil)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            toolsLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            toolsLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: padding)
        ])
    }
    
}
