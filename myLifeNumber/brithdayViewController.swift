//
//  brithdayViewController.swift
//  myLifeNumber
//
//  Created by Yvonne on 2019/11/24.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class brithdayViewController: UIViewController {
    
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
   
    
    
    }
    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
   //     return <#resultViewController(coder: coder)#>
      
        let controller = resultViewController(coder: coder)
        controller?.brithday = datePicker.date
        return controller
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
