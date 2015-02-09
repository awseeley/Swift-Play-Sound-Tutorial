//
//  ViewController.swift
//  PlaySound
//
//  Created by Andrew Seeley on 9/02/2015.
//  Copyright (c) 2015 Seemu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func PlaySound(sender: UIButton) {
        
        // Set the sound file name & extension
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Mario", ofType: "mp3")!)
        
        // Preperation
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        // Play the sound
        var error: NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
        
    }
}

