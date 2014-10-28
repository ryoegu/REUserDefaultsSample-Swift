//
//  SecondViewController.swift
//  REUserDefaultsSample-Swift
//
//  Created by Ryo Eguchi on 2014/10/28.
//  Copyright (c) 2014年 Ryo Eguchi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userProgressView: UIProgressView!
    @IBOutlet var onoffLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //NSUserDefaults（倉庫）からデータを取る
        //（STEP.1）倉庫の作成
        let savedata = NSUserDefaults.standardUserDefaults()
        //（STEP.2）鍵を入れて、データをとってくる
        userNameLabel.text = savedata.stringForKey("userName")
        userProgressView.progress = savedata.floatForKey("slider")

        if savedata.boolForKey("onoff") {
            self.onoffLabel.text = "ON"
        }else{
            self.onoffLabel.text = "OFF"
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true,completion:nil);
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
