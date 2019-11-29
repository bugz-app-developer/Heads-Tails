//
//  ViewController.swift
//  Flip
//
//  Created by bugz.app.developer on 11/25/19.
//  Copyright © 2019 bugz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    let arr = [#imageLiteral(resourceName: "loading8"),#imageLiteral(resourceName: "loading6"),#imageLiteral(resourceName: "loading5"),#imageLiteral(resourceName: "loading9"),#imageLiteral(resourceName: "loading2"),#imageLiteral(resourceName: "loading10"),#imageLiteral(resourceName: "loading1"),#imageLiteral(resourceName: "loading4"),#imageLiteral(resourceName: "loading6"),#imageLiteral(resourceName: "loading11"),#imageLiteral(resourceName: "loading7"),#imageLiteral(resourceName: "loading1")]
    let opts = [#imageLiteral(resourceName: "Heads"),#imageLiteral(resourceName: "Tails")]
    
    @IBOutlet weak var tossButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tossButton.layer.cornerRadius = 10
        tossButton.layer.borderColor = UIColor(red: 238.0/255.0, green: 99.0/255.0, blue: 94.0/255.0, alpha: 1.0).cgColor
        tossButton.layer.borderWidth = 2.0
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        mainImageView.animationImages = arr
        mainImageView.animationDuration = 0.6
        mainImageView.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.mainImageView.stopAnimating()
            self.mainImageView.image = self.opts.randomElement()
        }
    }
}

