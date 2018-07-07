//
//  ChatbotViewController.swift
//  Coverd
//
//  Created by Andrew Yip on 7/7/18.
//  Copyright © 2018 Andrew Yip. All rights reserved.
//

import UIKit
import ApiAI
import AVFoundation

class ChatbotViewController: UIViewController {

    let speechSynthesizer = AVSpeechSynthesizer()
    
    @IBOutlet weak var chipResponse: UILabel!
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBAction func sendMessage(_ sender: Any) {
        let request = ApiAI.shared().textRequest()
        
        if let text = self.messageField.text, text != "" {
            request?.query = text
        } else {
            return
        }
        
        request?.setMappedCompletionBlockSuccess({ (request, response) in
            let response = response as! AIResponse
            if let textResponse = response.result.fulfillment.speech {
                self.speechAndText(text: textResponse)
            }
        }, failure: { (request, error) in
            print(error!)
        })
        
        ApiAI.shared().enqueue(request)
        messageField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func speechAndText(text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechSynthesizer.speak(speechUtterance)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.chipResponse.text = text
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
