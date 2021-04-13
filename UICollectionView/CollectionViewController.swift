//
//  CollectionViewController.swift
//  UICollectionView
//
//  Created by Никита Коголенок on 24.12.20.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class CollectionViewController: UICollectionViewController {
    // MARK: - Variable
    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                          "Dave Wincent - Red Eye (Original Mix)",
                          "E-Spectro - End Station (Original Mix)",
                          "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                          "Ilija Djokovic - Delusion (Original Mix)",
                          "John Baptiste - Mycelium (Original Mix)",
                          "Lane 8 - Fingerprint (Original Mix)",
                          "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                          "Metodi Hristov, Gallya - Badmash (Original Mix)",
                          "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        cell.image.image = UIImage(named: imageNameArray[indexPath.row])
        
        return cell
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let photo = segue.destination as! ViewController
            let cell = sender as! CollectionViewCell
            photo.imageDetail = cell.image
        }
    }
}
