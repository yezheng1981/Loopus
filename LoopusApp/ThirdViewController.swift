//
//  ThirdViewController.swift
//  LoopusApp
//
//  Created by Allen on 16/2/5.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var contactTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.dataSource = self;
        contactTableView.delegate = self;

    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if section == 0
        {
            return 3;
        }
        
        return 5;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = contactTableView.dequeueReusableCell(withIdentifier: "Cell_Contact", for: indexPath) as! ContactTableViewCell
        cell.nameLabel.text! = "John Hirstick";
        cell.contactImage.image = UIImage(named: "bruce");
        return cell

    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int // Default is 1 if not implemented
    {
        return 27;
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? // fixed font style. use custom view (UILabel) if you want something different
    {
        if section == 0
        {
            return nil;
        }
        
        return "A";
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
