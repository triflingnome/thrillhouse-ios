//
//  ThrillhousePlayerViewController.swift
//  thrillhouse
//
//  Created by Michael Berg on 5/15/18.
//  Copyright © 2018 Michael Berg. All rights reserved.
//

import AVKit
import UIKit

class ThrillhousePlayerViewController: AVPlayerViewController {

    // MARK: View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up AVPlayer to stream music from Thrillhouse Radio
        guard let thrillhouseURL = URL(string: "http://www.thrillhouserad.io:80/live") else { return }
        let thrillhousePlayer = AVPlayer(url: thrillhouseURL)
        player = thrillhousePlayer
    }
}
