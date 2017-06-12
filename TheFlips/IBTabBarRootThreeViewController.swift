//
//  IBTabBarRootThreeViewController.swift
//  TheFlips
//
//  Created by Altiarika on 6/12/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import UIKit


class IBTabBarRootThreeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configImageView()
    }
}


extension IBTabBarRootThreeViewController {
    
    fileprivate func configImageView() {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "blueImage")
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
}

