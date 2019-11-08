//
//  DrinkCollectionViewCell.swift
//  smartending
//
//  Created by Calli Sabaitis on 11/8/19.
//  Copyright © 2019 Calli Sabaitis. All rights reserved.
//

import UIKit

class DrinkCollectionViewCell: UICollectionViewCell {
    
    var drinkImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        drinkImageView = UIImageView()
        drinkImageView.translatesAutoresizingMaskIntoConstraints = false
        drinkImageView.contentMode = .scaleAspectFill
        drinkImageView.layer.masksToBounds = true
        contentView.addSubview(drinkImageView)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            drinkImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            drinkImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            drinkImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            drinkImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func configure(for drink: Drink) {
        drinkImageView.image = UIImage(named: drink.picName)
    }
    
}
