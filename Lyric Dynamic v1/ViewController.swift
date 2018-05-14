//
//  ViewController.swift
//  Lyric Dynamic v1
//
//  Created by Lizzy on 2018/5/14.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SongListTV: UITableView!
    
    var songs = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SongListTV.dataSource = self
        SongListTV.delegate = self
    }
    
    func 
        
        
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

