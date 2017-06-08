//
//  ViewController.swift
//  Egg Timer app
//
//  Created by Nare Hovhannisyan on 6/8/17.
//  Copyright © 2017 Nare Hovhannisyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var counter = 210
    @IBOutlet weak var label: UILabel!
    
    func eggTimer()
    {
        if counter > 0
        {
            counter -= 1
            label.text = String(counter)
        }
    }
    
    @IBAction func play(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.eggTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any)
    {
        timer.invalidate()
    }
    
    @IBAction func plusten(_ sender: Any)
    {
        counter += 10
        label.text = String(counter)
    }
    
    @IBAction func minusten(_ sender: Any)
    {
        if counter > 10
        {
            counter -= 10
            label.text = String(counter)
        }
    }
    
    @IBAction func reset(_ sender: Any)
    {
        timer.invalidate()
        counter = 210
        label.text = String(counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

