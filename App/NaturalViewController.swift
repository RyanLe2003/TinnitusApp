//
//  NaturalViewController.swift
//  App
//
//  Created by Ryan Le on 1/9/21.
//

import UIKit
import AVFoundation

class NaturalViewController: UIViewController {
    
    @IBOutlet weak var waveButton: UIButton!
    var waveIsPlayingAudio = false
    var wavePlayer : AVAudioPlayer?
    
    @IBOutlet weak var waterfallButton: UIButton!
    var waterfallIsPlayingAudio = false
    var waterfallPlayer : AVAudioPlayer?
    
    @IBOutlet weak var rainButton: UIButton!
    var rainIsPlayingAudio = false
    var rainPlayer : AVAudioPlayer?
    
    @IBOutlet weak var thunderButton: UIButton!
    var thunderIsPlayingAudio = false
    var thunderPlayer : AVAudioPlayer?
    
    @IBOutlet weak var cityButton: UIButton!
    var cityIsPlayingAudio = false
    var cityPlayer : AVAudioPlayer?
    
    @IBOutlet weak var campfireButton: UIButton!
    var campfireIsPlayingAudio = false
    var campfirePlayer : AVAudioPlayer?
    
    @IBOutlet weak var talkingButton: UIButton!
    var talkingIsPlayingAudio = false
    var talkingPlayer : AVAudioPlayer?
    
    @IBOutlet weak var windButton: UIButton!
    var windIsPlayingAudio = false
    var windPlayer : AVAudioPlayer?
    
    @IBOutlet weak var cricketsButton: UIButton!
    var cricketsIsPlayingAudio = false
    var cricketsPlayer : AVAudioPlayer?
    
    @IBOutlet weak var heatwaveButton: UIButton!
    var heatwaveIsPlayingAudio = false
    var heatwavePlayer : AVAudioPlayer?
    
    @IBOutlet weak var bellButton: UIButton!
    var bellIsPlayingAudio = false
    var bellPlayer : AVAudioPlayer?
    
    @IBOutlet weak var chimesButton: UIButton!
    var chimesIsPlayingAudio = false
    var chimesPlayer : AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func waveTouch(_ sender: UIButton) {
        if waveIsPlayingAudio{
            waveStartAudio(false)
            waveIsPlayingAudio = false
        } else {
            waveStartAudio(true)
            waveIsPlayingAudio = true
        }
    }
    
    func waveStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "ocean", withExtension: "wav")!
                        if wavePlayer == nil {
                            wavePlayer = try AVAudioPlayer.init(contentsOf: url)
                            wavePlayer?.numberOfLoops = -1
                        }
                        
                        wavePlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            wavePlayer?.pause()
        }
        }
    
    
    @IBAction func waterfallTouch(_ sender: UIButton) {
        if waterfallIsPlayingAudio{
            waterfallStartAudio(false)
            waterfallIsPlayingAudio = false
        } else {
            waterfallStartAudio(true)
            waterfallIsPlayingAudio = true
        }
    }
    
    func waterfallStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "waterfall", withExtension: "wav")!
                        if waterfallPlayer == nil {
                            waterfallPlayer = try AVAudioPlayer.init(contentsOf: url)
                            waterfallPlayer?.numberOfLoops = -1
                        }
                        
                        waterfallPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            waterfallPlayer?.pause()
        }
        }
    @IBAction func rainTouch(_ sender: UIButton) {
        if rainIsPlayingAudio{
            rainStartAudio(false)
            rainIsPlayingAudio = false
        } else {
            rainStartAudio(true)
            rainIsPlayingAudio = true
        }
    }
    
    func rainStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "rain", withExtension: "wav")!
                        if rainPlayer == nil {
                            rainPlayer = try AVAudioPlayer.init(contentsOf: url)
                            rainPlayer?.numberOfLoops = -1
                        }
                        
                        rainPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            rainPlayer?.pause()
        }
        }
    
    @IBAction func thunderTouch(_ sender: UIButton) {
        if thunderIsPlayingAudio{
            thunderStartAudio(false)
            thunderIsPlayingAudio = false
        } else {
            thunderStartAudio(true)
            thunderIsPlayingAudio = true
        }
    }
    func thunderStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "thunder", withExtension: "wav")!
                        if thunderPlayer == nil {
                            thunderPlayer = try AVAudioPlayer.init(contentsOf: url)
                            thunderPlayer?.numberOfLoops = -1
                        }
                        
                        thunderPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            thunderPlayer?.pause()
        }
        }
    
    @IBAction func cityTouch(_ sender: UIButton) {
        if cityIsPlayingAudio{
            cityStartAudio(false)
            cityIsPlayingAudio = false
        } else {
            cityStartAudio(true)
            cityIsPlayingAudio = true
        }
    }
    func cityStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "city", withExtension: "wav")!
                        if cityPlayer == nil {
                            cityPlayer = try AVAudioPlayer.init(contentsOf: url)
                            cityPlayer?.numberOfLoops = -1
                        }
                        
                        cityPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            cityPlayer?.pause()
        }
        }
    @IBAction func campfireTouch(_ sender: UIButton) {
        if campfireIsPlayingAudio{
            campfireStartAudio(false)
            campfireIsPlayingAudio = false
        } else {
            campfireStartAudio(true)
            campfireIsPlayingAudio = true
        }
    }
    func campfireStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "campfire", withExtension: "wav")!
                        if campfirePlayer == nil {
                            campfirePlayer = try AVAudioPlayer.init(contentsOf: url)
                            campfirePlayer?.numberOfLoops = -1
                        }
                        
                        campfirePlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            campfirePlayer?.pause()
        }
        }
    
    @IBAction func talkingTouch(_ sender: Any) {
        if talkingIsPlayingAudio{
            talkingStartAudio(false)
            talkingIsPlayingAudio = false
        } else {
            talkingStartAudio(true)
            talkingIsPlayingAudio = true
        }
    }
    func talkingStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "talking", withExtension: "wav")!
                        if talkingPlayer == nil {
                            talkingPlayer = try AVAudioPlayer.init(contentsOf: url)
                            talkingPlayer?.numberOfLoops = -1
                        }
                        
                        talkingPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            talkingPlayer?.pause()
        }
        }
    
    @IBAction func windTouch(_ sender: Any) {
        if windIsPlayingAudio{
            windStartAudio(false)
            windIsPlayingAudio = false
        } else {
            windStartAudio(true)
            windIsPlayingAudio = true
        }
    }
    
    func windStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "wind", withExtension: "wav")!
                        if windPlayer == nil {
                            windPlayer = try AVAudioPlayer.init(contentsOf: url)
                           windPlayer?.numberOfLoops = -1
                        }
                        
                        windPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            windPlayer?.pause()
        }
        }
    @IBAction func cricketsTouch(_ sender: Any) {
        if cricketsIsPlayingAudio{
            cricketsStartAudio(false)
            cricketsIsPlayingAudio = false
        } else {
            cricketsStartAudio(true)
            cricketsIsPlayingAudio = true
        }
    }
    
    func cricketsStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "crickets", withExtension: "wav")!
                        if cricketsPlayer == nil {
                            cricketsPlayer = try AVAudioPlayer.init(contentsOf: url)
                            cricketsPlayer?.numberOfLoops = -1
                        }
                        
                        cricketsPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            cricketsPlayer?.pause()
        }
        }
    @IBAction func heatwaveTouch(_ sender: Any) {
        if heatwaveIsPlayingAudio{
            heatwaveStartAudio(false)
            heatwaveIsPlayingAudio = false
        } else {
            heatwaveStartAudio(true)
            heatwaveIsPlayingAudio = true
        }
    }
    func heatwaveStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "heatwave", withExtension: "wav")!
                        if heatwavePlayer == nil {
                            heatwavePlayer = try AVAudioPlayer.init(contentsOf: url)
                            heatwavePlayer?.numberOfLoops = -1
                        }
                        
                        heatwavePlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            heatwavePlayer?.pause()
        }
        }
    @IBAction func bellTouch(_ sender: Any) {
        if bellIsPlayingAudio{
            bellStartAudio(false)
            bellIsPlayingAudio = false
        } else {
            bellStartAudio(true)
            bellIsPlayingAudio = true
        }
    }
    func bellStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "bell", withExtension: "wav")!
                        if bellPlayer == nil {
                            bellPlayer = try AVAudioPlayer.init(contentsOf: url)
                            bellPlayer?.numberOfLoops = -1
                        }
                        
                        bellPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            bellPlayer?.pause()
        }
        }
    
    @IBAction func windchimesTouch(_ sender: Any) {
        if chimesIsPlayingAudio{
            chimesStartAudio(false)
            chimesIsPlayingAudio = false
        } else {
            chimesStartAudio(true)
            chimesIsPlayingAudio = true
        }
    }
    
    func chimesStartAudio(_ start: Bool) {
        
        if start {
            do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, options: .mixWithOthers)
                        NSLog("Playback OK")
                        try AVAudioSession.sharedInstance().setActive(true)
                        NSLog("Session is Active")
                        
                        let url = Bundle.main.url(forResource: "chimes", withExtension: "wav")!
                        if chimesPlayer == nil {
                            chimesPlayer = try AVAudioPlayer.init(contentsOf: url)
                            chimesPlayer?.numberOfLoops = -1
                        }
                        
                        chimesPlayer?.play()
                    } catch {
                        NSLog("ERROR: CANNOT PLAY MUSIC IN BACKGROUND. Message from code: \"\(error)\"")
                    }
        }else{
            chimesPlayer?.pause()
        }
        }
    
    
    
    



}

