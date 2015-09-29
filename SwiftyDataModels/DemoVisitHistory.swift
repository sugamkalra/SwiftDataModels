//
//  DemoVisitHistory.swift
//  SwiftyDataModels
//
//  Created by Sugam Kalra on 23/09/15.
//  Copyright (c) 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class DemoVisitHistory
{
    var VisitHistoryId:String?
    var CustomerId:String?
    var CustomerNo:String?
    var CustomerName:String?
    var VisitDate:String?
    var SalesPersonId:String?
    var SalesPersonName:String?
    var SalesPersonUsername:String?
    
    
    init(id: String){
        self.VisitHistoryId = id
    }

       

    class func fromJson(json: JSON) -> DemoVisitHistory?
    {
        if let mId = json["VisitHistoryId"].string
        {
            let visit = DemoVisitHistory(id: mId)
            visit.CustomerId = json["CustomerId"].stringValue
            visit.CustomerNo = json["CustomerNo"].stringValue
            visit.CustomerName = json["CustomerName"].stringValue
            visit.VisitDate = json["VisitDate"].stringValue
            visit.SalesPersonId = json["SalesPersonId"].stringValue
            visit.SalesPersonName = json["SalesPersonName"].stringValue
            visit.SalesPersonUsername = json["SalesPersonUsername"].stringValue
                        
            return visit
        }
        return nil
    }

    
   
}


