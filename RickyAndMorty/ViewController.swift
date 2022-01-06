//
//  ViewController.swift
//  RickyAndMorty
//
//  Created by A101Mac on 5.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var characters: [CellModel] = []
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
     
        characters = CellViewModel().characters
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let character = characters[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCell", for: indexPath) as? CollectionViewCell {
            cell.nameLabel.text = character.name
            let url = URL(string: character.image)

            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url!)
                DispatchQueue.main.async {
                    cell.avatarImage.image = UIImage(data: data!)
                }
            }
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "toDetailVc", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVc" {
            let detailVc = segue.destination as! DetailViewController
            detailVc.character = characters[index]
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width * 0.45
        let height: CGFloat = 234.0

        return CGSize(width: width, height: height)
    }
}
