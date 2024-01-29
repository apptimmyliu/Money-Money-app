//
//  ViewController.swift
//  Money Money app
//
//  Created by Timmy on 2024/1/19.
//

import UIKit
import AVFoundation

      
class ViewController: UIViewController {
    
    
    var player = AVPlayer()
    
    //顯示Money總數目的label
    @IBOutlet weak var totalLabel: UILabel!
    
    //點鈔次數
    var money = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchButton(_ sender: Any) {
        
        //  加入音樂的程式碼
        let url = Bundle.main.url(forResource: "sound", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
        player.play()
        //  按ㄧ次就會加100
        money = money + 100
        totalLabel.text = "\(money)"
        
        
    }
    //    重玩
    @IBAction func restart(_ sender: Any) {
        
        money = 0
        totalLabel.text = "0"
        
    }
}

