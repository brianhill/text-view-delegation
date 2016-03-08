//
//  ViewController.swift
//  TFDelegateExample
//
//  Created by Brian Hill on 3/8/16.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var textView: UITextView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // This violates the user interface guidelines. Users are
    // nonetheless 
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if "\n" == text {
            // dismiss the keyboard
            textView.resignFirstResponder()
            // don't insert the return
            return false
        } else {
            return true
        }
    }

}

