//
//  ViewController.swift
//  Add-to-App
//
//  Created by Vijay Masal on 22/12/23.
//

import UIKit
import Flutter

// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant

class ViewController: UIViewController {

    @IBOutlet weak var showButton: UIButton!
    let flutterEngine = FlutterEngine(name: "my flutter engine")
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run()
        
        // Connects plugins with iOS platform code to this app.
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
    }

    @IBAction func showAction(_ sender: UIButton) {
      print("show flutter")
        
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true)
    }
    
}

