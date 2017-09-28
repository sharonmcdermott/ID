//
//  ListViewController.swift
//  ID
//
//  Created by sharon mcdermott on 9/26/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let sections: [String] = ["Baby Steps", "Like A Big Kid", "Big Boy Pants", "Like an Adult"]
    let s1Data: [String] = ["Set Up Verbal Passwords For Accounts", "Notify Your Bank(s)", "Notify Your Credit Card(s)", "Notify Your Retirment Account(s)", "Notify Your Investment Account(s)"]
    let s2Data: [String] = ["Call IRS Identity Theft Line 1 (800) 908-4490", "File IRS Form 14039", "Notify Your State's Department of Taxation", "Notify the Social Security Administration", "Notify the Federal Trade Commission", "Notify Your State('s) Attorney General", "File A Local Police Report"]
    let s3Data: [String] = ["Decide What Action You Will Take", "Notify the Three Credit Bureaus", "Freeze Your Credit Reports"]
    let s4Data: [String] = ["Open Your Mail Right Away", "Read Breach Letters Right Away", "File Your Taxes Early", "Regularly Monitor Credit Card", "Regularly Monitor Credit Report", "Regularly Check Monitoring Site(s) You Have Set Up"]
    
    /// Future: provide info related to what to do regarding specific security breaches, such as OPM, Equifax, Bank of America, Target, Clifton Larson Allen, etc.
    
    var sectionData: [Int: [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        sectionData = [0:s1Data, 1:s2Data, 2:s3Data, 3:s4Data]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int)
        -> String? {
            return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell");
            }
            
            cell!.textLabel?.text = sectionData[indexPath.section]![indexPath.row]
            
            return cell!
    }
}
