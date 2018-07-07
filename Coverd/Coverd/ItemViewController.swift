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
    
    @IBOutlet weak var segmentImage: UIImageView!
    
    //let screenSize:CGRect = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemSegment.selectedSegmentIndex = 0
        segmentImage.image = UIImage(named: "phone")

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
            segmentImage.image = UIImage(named: "phone")
        case 1:
            segmentImage.image = UIImage(named: "luggage")
        case 2:
            segmentImage.image = UIImage(named: "flight")
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
