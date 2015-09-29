//
//  DemoStore.swift
//  SwiftyDataModels
//
//  Created by Sugam Kalra on 23/09/15.
//  Copyright (c) 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class DemoStore: NSObject
{
    var StoreId:String?
    var StoreCode:String?
    var StoreName:String?
    var visits = [DemoVisitHistory]()
    
    override init() {
        super.init()
    }

    
    init(data: JSON) {
        super.init()
        
        StoreId = data["StoreId"].string
        StoreCode = data["StoreCode"].string
        StoreName = data["StoreName"].string
       
        
        
        if let visitsJson:[JSON] = data["VisitHistory"].array
        {
            for visitJSON:JSON in visitsJson
            {
                visits.append(DemoVisitHistory.fromJson(visitJSON)!)
            }
        }

        
        
        
    }

    
    
    
   
}
