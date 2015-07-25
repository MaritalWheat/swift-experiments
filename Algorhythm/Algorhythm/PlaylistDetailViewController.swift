//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Emanuel Rosu on 7/25/15.
//  Copyright (c) 2015 Emanuel Rosu. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    @IBOutlet weak var playlistArtistZero: UILabel!
    @IBOutlet weak var playlistArtistOne: UILabel!
    @IBOutlet weak var playlistArtistTwo: UILabel!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (playlist != nil) {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            playlistArtistZero.text = playlist!.artists[0]
            playlistArtistOne.text = playlist!.artists[1]
            playlistArtistTwo.text = playlist!.artists[2]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
