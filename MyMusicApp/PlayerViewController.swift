//
//  PlayerViewController.swift
//  MyMusicApp
//
//  Created by Vincentius Sutanto on 06/04/22.
//
import AVFoundation
import UIKit

class PlayerViewController: UIViewController {

    public var songList : [Song] = []
    
    var player: AVAudioPlayer?
    
    //Data Control
    public var position : Int = 0
    var currState = false
    
    //IBOutlet
    @IBOutlet var holder: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lyricView: UITextView!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var currTimeLabel: UILabel!
    @IBOutlet weak var timeLeftLabel: UILabel!
    
    @IBOutlet weak var forwardBtn: UIButton!
    @IBOutlet weak var backwardBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var favBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let song = songList[position]
        
        imageView.image = UIImage(named: song.songImage!)
        titleLabel.text = song.songTitle
        singerLabel.text = song.songSinger
        lyricView.text = song.songLyric
        
        // To check fav status
        if song.isFavorite ?? false {
            favBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        
        // To turn off editable text view
        lyricView.isEditable = false
    }
    
    @IBAction func pressForward(_ sender: Any) {
        if position ==  songList.count-1 {
            position = 0
        } else {
            position += 1
        }
        configure(index: position)
    }
    
    @IBAction func pressBackward(_ sender: Any) {
        if position > 0  {
            position -= 1
        } else {
            position = songList.count-1
        }
        configure(index: position)
    }
    
    @IBAction func pressPlay(_ sender: Any) {
        if !currState {
            playBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            currState = true
        } else {
            playBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
            currState = false
        }
    }
    
    @IBAction func pressFav(_ sender: Any) {
        if let fav = songList[position].isFavorite {
            songList[position].isFavorite = !fav
            changeToFav()
        }
    }
    
    func configure (index: Int ) {
        let song = songList[index]
        
        imageView.image = UIImage(named: song.songImage!)
        titleLabel.text = song.songTitle
        singerLabel.text = song.songSinger
        lyricView.text = song.songLyric
        
        changeToFav()
    }
    
    func changeToFav(){
        if songList[position].isFavorite ?? false {
            favBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
    

    //        let urlString = Bundle.main.path(forResource: "Hati", ofType: "m4a")
    //        print(urlString)
    //
    //        do{
    //            try AVAudioSession.sharedInstance().setMode(.default)
    //            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
    //
    //            guard let urlString = urlString else {
    //                return
    //            }
    //
    //            player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
    //
    //            guard let player = player else {
    //                return
    //            }
    //
    //            player.play()
    //        }catch{
    //            print("error play")
    //        }

}
