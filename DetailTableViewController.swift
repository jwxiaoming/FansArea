//
//  DetailTableViewController.swift
//  FansArea
//
//  Created by 狗儿心 on 17/2/3.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {


    @IBOutlet weak var LargeimageView: UIImageView!
    
    var areas: area!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LargeimageView.image = UIImage(named: areas.tupian)
        tableView.backgroundColor = UIColor(white: 0.98, alpha: 1)
        tableView.separatorColor = UIColor(white: 0.9, alpha: 1)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.estimatedRowHeight = 36
        tableView.rowHeight = UITableViewAutomaticDimension
        
        self.title = areas.areas
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as! DetailTableViewCell
        
        cell.backgroundColor = UIColor.clear
        
        switch indexPath.row {
        case 0:
            cell.FildeLabel.text = "餐馆名称"
            cell.ValueLabel.text = areas.areas
        case 1:
            cell.FildeLabel.text = "餐馆地点"
            cell.ValueLabel.text = areas.didian
        case 2:
            cell.FildeLabel.text = "餐馆类型"
            cell.ValueLabel.text = areas.leixing
        case 3 :
            cell.FildeLabel.text = "是否到访"
            cell.ValueLabel.text = areas.isVisited ? "去过" : "没去过"
        default:
            break
        }


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showReview"{
            let dest = segue.destination as! ReviewViewController
            dest.beijing = areas
        }
        
    }
    
    
    //添加反向转场方法
    @IBAction func close(segue: UIStoryboardSegue)  {
    
    }

}
