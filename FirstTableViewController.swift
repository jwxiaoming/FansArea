//
//  FirstTableViewController.swift
//  FansArea
//
//  Created by 狗儿心 on 17/1/31.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var areas = [
        area(areas: "咖啡胡同11111111111111111111111", tupian: "cafedeadend.jpg", didian: "香港", leixing: "咖啡 & 茶店", isVisited: false),
        area(areas: "霍米", tupian: "homei.jpg", didian: "香港", leixing: "咖啡", isVisited: false),
        area(areas: "茶.家", tupian: "teakha.jpg", didian: "香港", leixing: "茶屋", isVisited: false),
        area(areas: "洛伊斯咖啡", tupian: "cafeloisl.jpg", didian: "香港", leixing: "奥地利式 & 休闲饮料", isVisited: false),
        area(areas: "贝蒂生蚝", tupian: "petiteoyster.jpg", didian: "香港", leixing: "法式", isVisited: false),
        area(areas: "福奇餐馆", tupian: "forkeerestaurant.jpg", didian: "香港", leixing: "面包房", isVisited: false),
        area(areas: "阿波画室", tupian: "posatelier.jpg", didian: "香港", leixing: "面包房", isVisited: false),
        area(areas: "伯克街面包坊", tupian: "bourkestreetbakery.jpg", didian: "悉尼", leixing: "巧克力", isVisited: false),
        area(areas: "黑氏巧克力", tupian: "haighschocolate.jpg", didian: "悉尼", leixing: "咖啡", isVisited: false),
        area(areas: "惠灵顿雪梨", tupian: "palominoespresso.jpg", didian: "悉尼", leixing: "美式 & 海鲜", isVisited: false),
        area(areas: "北州", tupian: "upstate.jpg", didian: "纽约", leixing: "美式", isVisited: false),
        area(areas: "布鲁克林塔菲", tupian: "traif.jpg", didian: "纽约", leixing: "美式", isVisited: false),
        area(areas: "格雷厄姆大街肉", tupian: "grahamavenuemeats.jpg", didian: "纽约", leixing: "早餐 & 早午餐", isVisited: false),
        area(areas: "华夫饼 & 沃夫", tupian: "wafflewolf.jpg", didian: "纽约", leixing: "法式 & 茶", isVisited: false),
        area(areas: "五叶", tupian: "fiveleaves.jpg", didian: "纽约", leixing: "咖啡 & 茶", isVisited: false),
        area(areas: "眼光咖啡", tupian: "cafelore.jpg", didian: "纽约", leixing: "拉丁美式", isVisited: false),
        area(areas: "忏悔", tupian: "confessional.jpg", didian: "纽约", leixing: "西班牙式", isVisited: false),
        area(areas: "巴拉菲娜", tupian: "barrafina.jpg", didian: "伦敦", leixing: "西班牙式", isVisited: false),
        area(areas: "多尼西亚", tupian: "donostia.jpg", didian: "伦敦", leixing: "西班牙式", isVisited: false),
        area(areas: "皇家橡树", tupian: "royaloak.jpg", didian: "伦敦", leixing: "英式", isVisited: false),
        area(areas: "泰咖啡", tupian: "thaicafe.jpg", didian: "伦敦", leixing: "泰式", isVisited: false)
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tableView.backgroundColor = UIColor.brown
        //隐藏返回按钮的名字，只留一个箭头
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style: .plain, target:nil, action:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return areas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)as! CustomTableViewCell

        // Configure the cell...
        cell.nameLabel.text = areas[indexPath.row].areas
        cell.thumimage.image = UIImage(named: areas[indexPath.row].tupian)
        //cell.thumimage.layer.cornerRadius = cell.thumimage.frame.size.height/2
        //cell.thumimage.clipsToBounds = true
        
        cell.addressLabel.text = areas[indexPath.row].didian
        cell.typeLabel.text = areas[indexPath.row].leixing
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showDetail"{
            let dest = segue.destination as! DetailTableViewController
            dest.areas = areas[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
    /*隐藏状态栏
    override var prefersStatusBarHidden: Bool{
        return true
    }
    */
}
