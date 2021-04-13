//
//  ViewController.swift
//  UICollectionView
//
//  Created by Никита Коголенок on 24.12.20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Variable
    var trackTitle = ""
    // MARK: - Outlet
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetail.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0 
    }
}
