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



	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	func updateLabel() {
		welcomeLabel.text = "\(urlTextField.text) + \(nameTextField.text)"
	
	}

}

