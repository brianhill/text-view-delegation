//
//  ViewController.swift
//  TFDelegateExample
//
//  Created by Brian Hill on 3/8/16.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var textView: UITextView? = nil
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This violates the user interface guidelines. Users are
    // nonetheless rather used to having return dismiss the keyboard in many circumstances
    // and Apple will probably not block distribution of your app just for violating this guideline.
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

