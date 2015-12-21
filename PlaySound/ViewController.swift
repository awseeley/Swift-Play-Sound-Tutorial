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
        let alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Mario", ofType: "mp3")!)
        
        do {
            // Preperation
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
        }
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
        }
        
        // Play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: alertSound)
        } catch _{
        }
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
        
    }
}

