//
//  resultViewController.swift
//  myLifeNumber
//
//  Created by Yvonne on 2019/11/24.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit
import WebKit

class resultViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    var brithday = Date()
    
    
    var lifeNumberNames = ["","開創", "協調", "創意", "務實", "自由", "關懷", "探究", "權威", "智慧"]
    
    func calculateLifeNumber() -> Int {

        
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yMd"
        let dateString = dateFormatter.string(from: brithday)
        return calculateLifeNumber(dateString)
        
    }
    func calculateLifeNumber(_ dateString:String)->Int{
         var sum=0
         for numberString in dateString{
            let number = Int(String(numberString))!
            sum = sum + number
            }
         if sum >= 10 {
            sum = calculateLifeNumber(sum.description)
        }
        return sum
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//   let number = calculateLifeNumber()
 //         title = "\(number) \(lifeNumberNames[number])數"
     
        let number = calculateLifeNumber()
//        title = "\(number) \(lifeNumberNames[number])aaa數"
       title = "peter loves eveery ..."
        if let url = URL(string: "https://www.ifreesite.com/numerology/a\(number).htm"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    
    }
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
