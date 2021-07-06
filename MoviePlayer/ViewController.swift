//
//  ViewController.swift
//  MoviePlayer
//
//  Created by David Yoon on 2021/07/06.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        // 비디오 파일명 내부의 경로에서 받아오기
        let filePath: String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)// 파일명을 NSURL형식으로 변경
        
        playVideo(url: url)
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
        playVideo(url: url)
    }
    
    @IBAction func btnPlayInternalMovieMov(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "Mountaineering", ofType:"mov")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
    }
    
    
    @IBAction func btnPlayExternalMovieMov(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/ijybpprsmx0bgre/Seascape.mov")!
        playVideo(url: url)
        
    }
    
    
    private func playVideo(url: NSURL) {
        let playerContoller = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerContoller.player = player
        
        self.present(playerContoller, animated: true) {
            player.play()
        }
    }
}

