//
//  ListTableViewController.swift
//  GroceryList
//
//  Created by bearclough on 10/5/14.
//  Copyright (c) 2014 bearclough. All rights reserved.
//

import Foundation
import UIKit

class ListTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var lists: [List]
    
    // MARK: Initializer
    
    required init(coder aDecoder: NSCoder) {
        
        
        let traderJoes = List()
        traderJoes.name = "Trader Joes"
        traderJoes.store = "Trade Joes"
        
        let freshAndEasy = List()
        freshAndEasy.name = "Fresh & Easy"
        freshAndEasy.store = "Fresh & Easy"
        
        let bevMo = List()
        bevMo.name = "BevMo"
        bevMo.store = "BevMo"
        
        lists = [traderJoes, freshAndEasy, bevMo]
        
        super.init(coder: aDecoder)
        
    }
    
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // register reuse identiifier with a UITableViewCell
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "listCell")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
    }
    
    
    // MARK: Lifetime
    
    deinit {
        // deinitialize observers
    }
    
    // MARK: Table View Datasource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // return number of rows
        println("Number of lists = \(lists.count)")
        
        return lists.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // return cell for function
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("listCell") as UITableViewCell
        
        var list = self.lists[indexPath.row]
        cell.textLabel!.text = list.name
        
        return cell;
    }
    
    // MARK: Table View Delegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // cell was selected
        
    }
    
    // MARK: Segue Handling
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // handle segue transitions here
        
    }
    
    
    
}