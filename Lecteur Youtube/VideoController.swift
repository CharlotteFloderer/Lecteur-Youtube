//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Charlotte Floderer on 28/07/2018.
//  Copyright © 2018 Floderer Charlotte. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  .blue
        if chanson != nil {
            title = chanson!.titre
            
        }
    }
    

}
