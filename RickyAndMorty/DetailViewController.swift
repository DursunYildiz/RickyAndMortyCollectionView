//
//  DetailViewController.swift
//  RickyAndMorty
//
//  Created by A101Mac on 6.01.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    var character : CellModel? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name : \(character?.name ?? "")"
        genderLabel.text = "Gender : \(character?.gender ?? "")"
        speciesLabel.text = "Species : \( character?.species ?? "" )"
        statusLabel.text = "Status : \( character?.status ?? "")"
        self.title = character?.name ?? ""
        
        
        let url = URL(string: character!.image)

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.avatarImage.image = UIImage(data: data!)
            
            }
        }
        // Do any additional setup after loading the view.
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
