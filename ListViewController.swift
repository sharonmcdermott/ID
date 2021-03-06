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
    let sectionTitles: [String] = ["Baby Steps: Just Get Started", "Like A Big Kid: Report It", "Big Boy Pants: Decide What To Do", "Like A Responsible Adult: Check Regularly"]
    let sectionImages: [UIImage] = [#imageLiteral(resourceName: "babySteps"), #imageLiteral(resourceName: "bigKid"), #imageLiteral(resourceName: "bigBoyPants"), #imageLiteral(resourceName: "likeAResponsibleAdult")]
    
    let s1Data: [String] = ["Set Up Verbal Passwords For Accounts", "Notify Your Bank(s)", "Notify Your Credit Card(s)", "Notify Your Retirment Account(s)", "Notify Your Investment Account(s)"]
    let s2Data: [String] = ["Call IRS Identity Theft Line 1 (800) 908-4490", "File IRS Form 14039", "Notify Your State's Department of Taxation", "Notify the Social Security Administration", "Notify the Federal Trade Commission", "Notify Your State('s) Attorney General", "File A Local Police Report"]
    let s3Data: [String] = ["Get an IRS PIN number", "Get a State Tax PIN number", "Notify the Three Credit Bureaus", "Freeze Your Credit Reports", "Identity Theft Protection Product(s)"]
    let s4Data: [String] = ["Open Your Mail Right Away", "Read Breach Letters Right Away", "File Your Taxes Early", "Regularly Monitor Checking Account(s)", "Regularly Monitor Savings Account(s)", "Regularly Monitor Retirement Account(s)", "Regularly Monitor Investment Account(s)", "Regularly Monitor Credit Card(s)", "Regularly Monitor Credit Report(s)", "Regularly Check Monitoring Site(s)"]
    

    
    var sectionData: [Int: [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        sectionData = [0:s1Data, 1:s2Data, 2:s3Data, 3:s4Data]
        setupNavBar()
    }
    
    func setupNavBar() {
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
            /// the searchcontroller statement creates a searchbar if needed.
//            let searchController = UISearchController(searchResultsController: nil)
//            navigationItem.searchController = searchController
        } else {
            // Fallback on earlier versions
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return (sectionData[section]?.count)!
    }
 
    
    /*
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int)
        -> String? {
            return sections[section]
    }
    */
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        
        
        let image = UIImageView(image: sectionImages[section])
        image.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
        
        view.addSubview(image)
        
        let label = UILabel()
        label.text = sectionTitles[section]
        label.frame = CGRect(x: 45, y: 5, width: 350, height: 35)
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
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
