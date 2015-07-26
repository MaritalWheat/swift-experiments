//
//  ViewController.swift
//  Algorhythm
//
//  Created by Emanuel Rosu on 7/25/15.
//  Copyright (c) 2015 Emanuel Rosu. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageViewZero: UIImageView!
    @IBOutlet weak var playlistImageViewOne: UIImageView!
    @IBOutlet weak var playlistImageViewTwo: UIImageView!
    @IBOutlet weak var playlistImageViewThree: UIImageView!
    @IBOutlet weak var playlistImageViewFour: UIImageView!
    @IBOutlet weak var playlistImageViewFive: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playlistsArray += [playlistImageViewZero, playlistImageViewOne, playlistImageViewTwo, playlistImageViewThree, playlistImageViewFour, playlistImageViewFive]
        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showPlaylistDetailSegue") {
            let playlistImageView = sender!.view as! UIImageView
            
            if let index = find(playlistsArray, playlistImageView) {
                let playlistViewController = segue.destinationViewController as! PlaylistDetailViewController
                playlistViewController.playlist = Playlist(index: index)
            }
        }
    }
    
    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
}

