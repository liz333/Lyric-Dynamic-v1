//
//  SongViewController.swift
//  Lyric Dynamic v1
//
//  Created by Lizzy on 2018/5/14.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class SongViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var singerLabel: UILabel!
    
    @IBOutlet weak var lyricistLabel: UILabel!
    
    @IBOutlet weak var composerLabel: UILabel!
    
    @IBOutlet weak var lyricLabel: UITextView!
    
    var song = Song()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = song.name
        singerLabel.text = song.singer
        lyricistLabel.text = song.lyricist
        composerLabel.text = song.composer
        lyricistLabel.text = song.lyric
    }
    
}
