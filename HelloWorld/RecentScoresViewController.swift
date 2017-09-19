//
//  RecentScoresViewController.swift
//  Excel
//
//  Created by Phillip Mathew on 6/27/17.
//  Copyright © 2017 Phillip Mathew. All rights reserved.
//

import UIKit
import PDFKit

class RecentScoresViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 4
        
        if let doc = PDFDocument.init(url: URL.init(fileURLWithPath: "/Users/phillip/Downloads/ViewReport (2).pdf")) {
            if let str = doc.string {
                print(str)
            }
        }
        
        //let view = PDFView
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
