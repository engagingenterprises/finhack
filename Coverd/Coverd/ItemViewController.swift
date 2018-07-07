//
//  ItemViewController.swift
//  Coverd
//
//  Created by Andrew Yip on 7/7/18.
//  Copyright © 2018 Andrew Yip. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var itemSegment: UISegmentedControl!
    
    @IBOutlet weak var viewFlight: UIView!
    @IBOutlet weak var viewPhone: UIView!
    @IBOutlet weak var viewLuggage: UIView!
    
    let screenSize:CGRect = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemSegment.selectedSegmentIndex = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func itemChoose(_ sender: UISegmentedControl) {
        switch itemSegment.selectedSegmentIndex
        {
        case 0:
            viewFlight.frame.size.height = screenSize.height*0
            viewLuggage.frame.size.height = screenSize.height*0
            viewPhone.frame.size.height = screenSize.height*0.8
        case 1:
            viewFlight.frame.size.height = screenSize.height*0
            viewLuggage.frame.size.height = screenSize.height*0.8
            viewPhone.frame.size.height = screenSize.height*0
        case 2:
            viewFlight.frame.size.height = screenSize.height*0.8
            viewLuggage.frame.size.height = screenSize.height*0
            viewPhone.frame.size.height = screenSize.height*0
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
