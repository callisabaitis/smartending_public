//
//  ViewController.swift
//  smartending
//
//  Created by Calli Sabaitis on 11/8/19.
//  Copyright © 2019 Calli Sabaitis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var drinkCollectionView: UICollectionView!
    let drinkCellReuseIdentifier = "drinkCellReuseIdentifier"
    
    let padding: CGFloat = 8
    
    var drinkList: [Drink]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Drinks!"
        view.backgroundColor = .white
        
        let martini = Drink(name: "Martini", tools: ["Shaker", "Strainer", "Glass"], ingredients: ["2.5oz gin", "0.5oz dry vermouth"], garnish: "Olive or Twist", glass: "Martini Glass", instructions: "Shake, stir, strain into glass", picName: "martini")
        drinkList = [martini]
        
        //set up drink layout for menu collection view
        let drinkLayout = UICollectionViewFlowLayout()
        drinkLayout.scrollDirection = .horizontal
        drinkLayout.minimumLineSpacing = padding+10
        drinkLayout.minimumInteritemSpacing = padding+10
        
        //set up restaurant collection view
        drinkCollectionView = UICollectionView(frame: .zero, collectionViewLayout: drinkLayout)
        drinkCollectionView.translatesAutoresizingMaskIntoConstraints = false
        drinkCollectionView.backgroundColor = .white
        drinkCollectionView.register(DrinkCollectionViewCell.self, forCellWithReuseIdentifier: drinkCellReuseIdentifier)
        drinkCollectionView.dataSource = self
        drinkCollectionView.delegate = self
        
        view.addSubview(drinkCollectionView)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            drinkCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            drinkCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            drinkCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            drinkCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }


}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = drinkCollectionView.dequeueReusableCell(withReuseIdentifier: drinkCellReuseIdentifier, for: indexPath) as! DrinkCollectionViewCell
        cell.configure(for: drinkList![indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drinkList.count
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (drinkCollectionView.frame.width - padding)/2.0
        return CGSize(width: size, height: size)
    }
}
