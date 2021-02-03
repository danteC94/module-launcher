//
//  ModuleLauncherViewController.swift
//  ModuleLauncher
//
//  Created by dante on 31/01/2021.
//

import UIKit
import ViperModule

class ModuleLauncherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func launchModuleTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        guard let navVC = self.navigationController else { return }

        let managedContext = appDelegate.persistentContainer.viewContext

        _ = ViperModule.init(context: managedContext, navigationController: navVC)
    }
}
