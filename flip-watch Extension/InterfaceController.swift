//
//  InterfaceController.swift
//  flip-watch Extension
//
//  Created by bugz.app.developer on 11/28/19.
//  Copyright © 2019 bugz. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    let arr = ["Heads", "Tails"]
    @IBOutlet weak var MainImageView: WKInterfaceImage!
    
    @IBAction func TossButton() {

        MainImageView.setImageNamed("loading")
        MainImageView.startAnimatingWithImages(in: NSRange(location: 1,
                                                           length: 11), duration: 1, repeatCount: 2)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.MainImageView.setImageNamed(self.arr.randomElement())
        }
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
