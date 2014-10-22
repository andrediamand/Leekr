//
//  ViewController.swift
//  Leekr
//
//  Created by Andre Diamand on 10/22/14.
//  Copyright (c) 2014 VentureOne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Parse.setApplicationId("WchtfKZWiy2fri9d5tSLBLqekJIGCz2bCJJLeem0", clientKey: "JVAK0akItXqhBrPOVUc6n2DeYwkGTZ9Sp24ru59A")
        
        var testObject:PFObject = PFObject(className: "testObject")

        
        testObject["food"] = "baranga"
        testObject.setObject("user1", forKey: "user1")
        testObject.setObject("user2", forKey: "user2")
        testObject.setObject("user3", forKey: "user3")
        testObject.saveInBackgroundWithBlock( { (succeeded:Bool, error:NSError! ) -> Void in } )

        
        
/*
        
        [Parse setApplicationId:@"WchtfKZWiy2fri9d5tSLBLqekJIGCz2bCJJLeem0"
        clientKey:@"JVAK0akItXqhBrPOVUc6n2DeYwkGTZ9Sp24ru59A"];
        
        PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
        testObject[@"foo"] = @"bar";
        [testObject saveInBackground];

*/
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

