//
//  ViewController.swift
//  Json
//
//  Created by Xunnun on 9/12/20.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Hit the API end point
        let urlString = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-11-10&sortBy=publishedAt&apiKey=9eb1f182cf9447b8a6c528dac7eb4bd1"
        let url = URL(string: urlString)
        
        guard url != nil else
        {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //check for errors
            
            if error == nil && data != nil
            {
               //Parse Json
                let decoder = JSONDecoder()
                
                do
                {
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    print(newsFeed)
                }
                catch
                {
                    print("Error in JSON Parsing")
                }
            }
        }
        // Make the API call
        dataTask.resume()
    }


}

