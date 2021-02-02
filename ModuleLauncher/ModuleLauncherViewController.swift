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

        // Do any additional setup after loading the view.
    }

    @IBAction func launchModuleTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        guard let navVC = self.navigationController else { return }

        let managedContext = appDelegate.persistentContainer.viewContext

        _ = ViperModule.init(context: managedContext, navigationController: navVC)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
