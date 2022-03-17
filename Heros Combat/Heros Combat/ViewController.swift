//
//  ViewController.swift
//  Heros Combat
//
//  Created by Raazu Pahlowan on 15/7/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var upperView: UIImageView!
    @IBOutlet var lowerView: UIImageView!
    @IBOutlet var fightButtonShape: UIButton!
    @IBOutlet var vsLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    
    //var player: AVAudioPlayer!
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fightButtonShape.layer.cornerRadius = 20
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        imageView.image = UIImage(named: "Targarian Dev")
    }
    
    @IBAction func fightButton(_ sender: UIButton) {
        
    let herosArray =  [#imageLiteral(resourceName: "RIckandMorty Dev"),#imageLiteral(resourceName: "StarLord Dev"),#imageLiteral(resourceName: "BlackWidow Dev"),#imageLiteral(resourceName: "Thor Dev"),#imageLiteral(resourceName: "Loki Dev"),#imageLiteral(resourceName: "IronMan Dev"),#imageLiteral(resourceName: "Captain Dev"),#imageLiteral(resourceName: "Wicher Dev"),#imageLiteral(resourceName: "ScarletWitch Dev"),#imageLiteral(resourceName: "SpiderMan Dev"),#imageLiteral(resourceName: "GodOfWar Dev"),#imageLiteral(resourceName: "Targarian Dev"),#imageLiteral(resourceName: "Wolverine Dev"),#imageLiteral(resourceName: "DrDrange Dev"),#imageLiteral(resourceName: "Pool Dev"),#imageLiteral(resourceName: "Ragnar Dev"),#imageLiteral(resourceName: "Panther Dev")]
    
        upperView.image = herosArray.randomElement()
        lowerView.image = herosArray.randomElement()
        
    
    }
    
    func setConstrainy(){
        self.view.addSubview(image)
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
    
    

}

