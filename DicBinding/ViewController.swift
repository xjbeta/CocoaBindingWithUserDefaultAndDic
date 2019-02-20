//
//  ViewController.swift
//  DicBinding
//
//  Created by xjbeta on 2019/2/16.
//  Copyright © 2019 xjbeta. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    // https://stackoverflow.com/a/16000802
    let savedDic = "savedDic"
    
    @IBAction func printDic(_ sender: Any) {
        if let dic = UserDefaults.standard.dictionary(forKey: savedDic) {
            print(dic)
        }
    }
    
    @IBAction func updateDic(_ sender: Any) {
        if var dic = UserDefaults.standard.dictionary(forKey: savedDic),
            let str = dic["testValue2"] as? String {
            dic["testValue2"] = str + "+1s"
            UserDefaults.standard.set(dic, forKey: savedDic)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dic = UserDefaults.standard.dictionary(forKey: savedDic) {
            print(dic)
        } else {
            let d = ["testValue1": true,
                     "testValue2": "someString"] as [String : Any]
            UserDefaults.standard.set(d, forKey: savedDic)
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

