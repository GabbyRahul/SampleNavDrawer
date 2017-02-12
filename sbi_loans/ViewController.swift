//
//  ViewController.swift
//  sbi_loans
//
//  Created by Gabby on 23/01/17.
//  Copyright © 2017 The mighty midgets. All rights reserved.
//

import UIKit
import LNSideMenu

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var barButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // FIXME: Remove code below if u're using your own menu
        setupNavforDefaultMenu()
    }
    
    private func setupNavforDefaultMenu() {
        barButton.image = UIImage(named: "burger")?.withRenderingMode(.alwaysOriginal)
        // Set navigation bar translucent style
        self.navigationBarTranslucentStyle()
        // Update side menu
        sideMenuManager?.sideMenuController()?.sideMenu?.isNavbarHiddenOrTransparent = true
        // Re-enable sidemenu
        sideMenuManager?.sideMenuController()?.sideMenu?.disabled = false
    }
    
    @IBAction func toogleSideMenu(_ sender: AnyObject) {
        sideMenuManager?.toggleSideMenuView()
    }
    
}

