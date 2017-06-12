//
//  IBNavRootViewController.swift
//  TheFlips
//
//  Created by Altiarika on 6/12/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import UIKit


class IBNavRootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configImageView()
        
        self.navigationController?.delegate = self
        
    }
    
}


extension IBNavRootViewController {
    
    fileprivate func configImageView() {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "noCoupleImage")
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
}


extension IBNavRootViewController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        switch operation {
        case .pop:
            return FTBAnimationController(displayType: .pop, direction: .right, speed: .moderate)
        case .push:
            return FTBAnimationController(displayType: .push, direction: .left, speed: .moderate)
        default:
            return nil
        }
        
    }
    
}

