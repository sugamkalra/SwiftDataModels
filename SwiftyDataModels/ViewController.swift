//
//  ViewController.swift
//  SwiftyDataModels
//
//  Created by Sugam Kalra on 23/09/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var objStore:DemoStore?
    
    
    var json:JSON?

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // json will be dictionary you will get after calling the web service
        
        let path = NSBundle.mainBundle().pathForResource("Store", ofType: "json")
        
        let jsonData = NSData(contentsOfFile: path!)
        
        let theJSONText = NSString(data: jsonData!,
            encoding: NSASCIIStringEncoding)
        
        print("JSON string = \(theJSONText!)")
        
        self.json = JSON(theJSONText!)
        
        
        self.objStore = DemoStore(data: json!)

        print(self.objStore)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

