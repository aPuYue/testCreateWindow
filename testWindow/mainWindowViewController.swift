//
//  oldWindow.swift
//  testWindow
//
//  Created by puyue on 平成30-10-10.
//  Copyright © 平成30年 puyue. All rights reserved.
//

import UIKit

class MainWindowViewController: UIViewController {

    var newWindow: UIWindow?
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonA.addTarget(self, action:#selector(openNewWindow), for:.touchUpInside)
        buttonC.addTarget(self, action:#selector(closeWindow), for:.touchUpInside)
    }

    @objc func openNewWindow() {
        let objectstoryboard = UIStoryboard(name: "newStoryboard", bundle: nil)
        let objectNewStoryboard = objectstoryboard.instantiateViewController(withIdentifier: "newWindowID")
        
        newWindow = UIWindow(frame: UIScreen.main.bounds)
        newWindow?.makeKeyAndVisible()
        newWindow?.rootViewController = objectNewStoryboard
    }
    
    @objc func closeWindow() {
        newWindow = nil
        AppDelegate.get().window?.makeKeyAndVisible()
    }
}

