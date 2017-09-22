//
//  WelcomeViewController.swift
//  ID
//
//  Created by sharon mcdermott on 9/17/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var Scroller: UIScrollView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)
        
        
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

    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.Scroller.frame = self.view.bounds
        self.Scroller.contentSize.height = 400
        self.Scroller.contentSize.width = 0
    }
}
