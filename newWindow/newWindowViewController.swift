//
//  newWindow.swift
//  testWindow
//
//  Created by puyue on 平成30-10-10.
//  Copyright © 平成30年 puyue. All rights reserved.
//

import Foundation
import Foundation
import UIKit

class NewWindowViewController: UIViewController {
    
    @IBOutlet weak var buttonB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        buttonB.addTarget(self, action:#selector(closeWindow), for:.touchUpInside)
    }
    
    @objc func closeWindow() {
        AppDelegate.get().window?.makeKeyAndVisible()
    }

}
