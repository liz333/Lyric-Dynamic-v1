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
    
    @IBOutlet var composerLabel: UILabel!
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet weak var lyricLabel: UITextView!
    
    var song = Song()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(lyricLabel)
        lyricLabel.delegate = self as? UITextViewDelegate
        
        nameLabel.text = song.name
        singerLabel.text = "演唱：\(song.singer!)"
        lyricistLabel.text = "作词：\(song.lyricist!)"
        composerLabel.text = "作曲：\(song.composer!)"
        timeLabel.text = "时长：\(song.time)"
        lyricLabel.text = song.lyric
        
        lyricLabel.isEditable = false
        lyricLabel.layer.borderWidth = 1
        lyricLabel.layer.borderColor = UIColor.gray.cgColor
        lyricLabel.layer.cornerRadius = 20
        lyricLabel.layer.masksToBounds = true
        lyricLabel.textAlignment = NSTextAlignment.center
    }
    
    
    @IBAction func deleteTapped(_ sender: Any) {
        context.delete(song)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    
}
