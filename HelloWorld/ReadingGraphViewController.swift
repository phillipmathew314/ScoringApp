//
//  ReadingGraphViewController.swift
//  Excel
//
//  Created by Phillip Mathew on 7/10/17.
//  Copyright © 2017 Phillip Mathew. All rights reserved.
//

import UIKit
import WebKit
import CoreLocation

class ReadingGraphViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = Bundle.main.url(forResource: "graphs", withExtension: "html")!
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createGraphs() {
        
    }
}
