//
//  PDFViewController.swift
//  Excel
//
//  Created by Phillip Mathew on 7/6/17.
//  Copyright © 2017 Phillip Mathew. All rights reserved.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.layer.cornerRadius = 4
        
        let pdfView = PDFView()
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pdfView)
        
        pdfView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pdfView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 10.0).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        if let document = PDFDocument(url: URL.init(fileURLWithPath: "/Users/phillip/Downloads/ViewReport (2).pdf")) {
            pdfView.document = document
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
