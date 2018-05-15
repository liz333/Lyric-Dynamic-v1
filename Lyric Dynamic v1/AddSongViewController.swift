//
//  AddSongViewController.swift
//  Lyric Dynamic v1
//
//  Created by Lizzy on 2018/5/14.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class AddSongViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var singerText: UITextField!
    
    @IBOutlet weak var lyricistText: UITextField!
    
    @IBOutlet weak var composerText: UITextField!
    
    @IBOutlet weak var lyricText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneBottonTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let song = Song (context: context)
        song.name = nameText.text!
        song.singer = singerText.text!
        song.lyricist = lyricistText.text!
        song.composer = composerText.text!
        song.lyric = lyricText.text!
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController?.popViewController(animated: true)
    }
    
}
