//
//  ViewController.swift
//  Lyric Dynamic v1
//
//  Created by Lizzy on 2018/5/14.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class SongListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var songListTV: UITableView!
    
    var songs : [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
        
        songListTV.dataSource = self
        songListTV.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showSongList()
        songListTV.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let song = songs[indexPath.row]
        cell.textLabel?.text = "🎼 \(song.name!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let song = songs[indexPath.row]
        performSegue(withIdentifier: "viewSegue", sender: song)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    func showSongList() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            songs = try context.fetch(Song.fetchRequest()) as! [Song]
        } catch {
            print("Oops~")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewSegue" {
            let nextVC = segue.destination as! SongViewController
             nextVC.song = sender as! Song
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

