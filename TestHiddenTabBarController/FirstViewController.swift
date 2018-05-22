//
//  FirstViewController.swift
//  TestHiddenTabBarController
//
//  Created by Alexander Lonsky on 20/03/2018.
//  Copyright © 2018 Alexander Lonsky. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbarItems = [add, spacer]
    }

    @objc func addTapped() {

    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        //
    }

    @IBAction func onToggleDidPress(_ sender: Any) {
        guard let tabBar = self.tabBarController?.tabBar else {
            return
        }

        tabBar.isHidden = !tabBar.isHidden
//        self.navigationController?.setToolbarHidden(!tabBar.isHidden, animated: false)
//        self.navigationController?.setToolbarHidden(!self.navigationController!.toolbar.isHidden, animated: true)
    }
}

