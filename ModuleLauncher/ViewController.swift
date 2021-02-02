//
//  ViewController.swift
//  ModuleLauncher
//
//  Created by dante on 31/01/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pushNewViewController(from: self.navigationController!)
    }


//         Do any additional setup after loading the view.

    func pushNewViewController(from: UINavigationController) {
        let newVC = ModuleLauncherViewController(nibName: "ModuleLauncherViewController", bundle: nil)
        from.pushViewController(newVC, animated: true)
    }
}

