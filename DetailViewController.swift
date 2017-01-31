//
//  DetailViewController.swift
//  FansArea
//
//  Created by 狗儿心 on 17/1/31.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var areaname = ""
    
    @IBOutlet weak var imageview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = UIImage(named: areaname)

        // Do any additional setup after loading the view.
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

}
