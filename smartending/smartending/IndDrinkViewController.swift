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
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        setupConstraints()
    }
    
    init(drink: Drink){
        //if let name = drink.name {
            //nameLabel = UILabel()
        nameText = drink.name
       // }
        super.init(nibName: nil, bundle: nil)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
