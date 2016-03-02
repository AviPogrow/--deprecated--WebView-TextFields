//
//  ViewController.swift
//  WebView+TextFieleds
//
//  Created by new on 3/2/16.
//  Copyright © 2016 Avi Pogrow. All rights reserved.
import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var nameTextField: UITextField!
	
	@IBOutlet weak var urlTextField: UITextField!
	
	
	@IBOutlet weak var welcomeLabel: UILabel!

	@IBOutlet weak var webView: UIWebView!

	var url = "http://apple.com"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	url = "https://apple.com"
	
	let requestURL = NSURL(string:url)
    let request = NSURLRequest(URL: requestURL!)
    webView.loadRequest(request)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	/******** textField delegate methods ********************/
		// MARK: - 3 TextField Delegate methods
	//1 This method listens for changes to the text field and asks "Can I make changes?"
	func textField(textField: UITextField,
		shouldChangeCharactersInRange range: NSRange,
									  replacementString string: String) -> Bool {

        // Figure out what the new text will be, if we return true
        var newText: NSString = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
		// returning true gives the text field permission to change its text
        return true
    }
	
	
	//2 This method gets invoked if the user taps the return on the keyboard
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		
		updateLabel()
		updateWebView()
		
		return true
	}
	//3 This method gets invoked when the user clicks inside the field
 	//this method clears the field
	func textFieldDidBeginEditing(textField: UITextField) {
		textField.text = ""
 	}	
	
	
	func updateLabel() {
		welcomeLabel.text = "\(urlTextField.text!) \("welcomes") \(nameTextField.text!)"
	
	}
	
	func updateWebView(){
	
		let url = urlTextField.text
		let requestURL = NSURL(string:url!)
    	let request = NSURLRequest(URL: requestURL!)
    	webView.loadRequest(request)
	}
}

