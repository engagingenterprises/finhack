//
//  ItemViewController.swift
//  Coverd
//
//  Created by Andrew Yip on 7/7/18.
//  Copyright © 2018 Andrew Yip. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControl.selectedSegmentIndex = 0
        imageDisplay.image = UIImage(named: "phone")
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        switch segmentControl.selectedSegmentIndex
        {
        case 0:
            imageDisplay.image = UIImage(named: "phone")
        case 1:
            imageDisplay.image = UIImage(named: "luggage")
        case 2:
            imageDisplay.image = UIImage(named: "flight")
        default:
            break
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
