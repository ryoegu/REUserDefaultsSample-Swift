//
//  ViewController.swift
//  REUserDefaultsSample-Swift
//
//  Created by Ryo Eguchi on 2014/10/28.
//  Copyright (c) 2014年 Ryo Eguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userSlider: UISlider!
    @IBOutlet var onoffSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButton(sender: UIButton) {
        //NSUserDefaultsの公式を使おう！
        //（STEP.1）倉庫を作成
        let savedata = NSUserDefaults.standardUserDefaults()
        //（STEP.2）書き込み
        savedata.setObject(userNameTextField.text, forKey: "userName")
        savedata.setObject(userSlider.value, forKey: "slider")
        savedata.setObject(onoffSwitch.on, forKey: "onoff")
        //（STEP.3）書き込みを確実にする！
        savedata.synchronize()
        
        //次の画面に遷移する
        performSegueWithIdentifier("toSecondView",sender: nil)
    }

}

