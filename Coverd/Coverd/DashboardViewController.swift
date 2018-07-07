//
//  ViewController.swift
//  Coverd
//
//  Created by Andrew Yip on 7/7/18.
//  Copyright © 2018 Andrew Yip. All rights reserved.
//

import UIKit
import Firebase

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        checkIfUserIsLoggedIn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
//            perform(Selector(handleLogout), with: nil, afterDelay: 0)
            
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
            
          
            
        } //else {
        //  print("Logged in")
        //}
    }
    
   @objc func handleLogout() {
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "destination") as! UINavigationController
        self.present(loginViewController, animated: true, completion: nil)
        
        //let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        //let navigationController = UINavigationController(rootViewController: loginViewController)
        //let navigationBarStyle = NavigationBarStyle()
        
        //navigationController.navigationBar.barTintColor = navigationBarStyle.barTintColor
        //navigationController.navigationBar.tintColor = navigationBarStyle.tintColor
        //navigationController.navigationBar.titleTextAttributes = navigationBarStyle.titleTextAttributes
        //self.present(navigationController, animated: true, completion: nil)
        
        //let loginViewController = LoginViewController()
        //present(loginViewController, animated: true, completion: nil)
        
        //let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "LoginNavigationController") as! UINavigationController
        //let navController = UINavigationController(rootViewController: VC1)
        //self.present(navController, animated:true, completion: nil)
        
        //self.navigationController?.pushViewController(VC1, animated: true)
    }

}

