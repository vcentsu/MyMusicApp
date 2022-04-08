//
//  ViewController.swift
//  MyMusicApp
//
//  Created by Vincentius Sutanto on 06/04/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    //Data
    var songList : [Song] = []
    var songFeeder = SongFeeder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .lightGray
        collectionView.backgroundColor = .lightGray
        
        songList = songFeeder.songDataFeeder()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return songList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCellID", for: indexPath) as? ItemCell)!
        let song = songList[indexPath.row]
        
        cell.image.image = UIImage(named: song.songImage!)
        cell.title.text = song.songTitle
        cell.singer.text = song.songSinger
//        if let image = songList[indexPath.row].songImage, let title = songList[indexPath.row].songTitle, let singer = songList[indexPath.row].songSinger {
//            cell.image.image = UIImage(named: image)
//            cell.title.text = title
//            cell.singer.text = singer
//        }
        cell.title?.font = UIFont(name: "Helvetica-Bold", size: 26)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let position = indexPath.row
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "player") as? PlayerViewController else {
            return
        }
        vc.songList = songList
        vc.position = position
        present(vc, animated: true)
    }
}

