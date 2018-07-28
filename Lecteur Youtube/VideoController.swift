//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Charlotte Floderer on 28/07/2018.
//  Copyright © 2018 Floderer Charlotte. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if chanson != nil {
            
            chargerVideo(chanson: chanson!)
            
        }
    }
    
    
    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
