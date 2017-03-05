//
//  ReviewViewController.swift
//  TableViewApp
//
//  Created by 狗儿心 on 17/3/5.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet weak var bgimageview: UIImageView!

    var beijing: area!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 叠加一个虚化背景     
        let effect = UIBlurEffect(style: .light)
        
        let effectview = UIVisualEffectView(effect: effect)
        
        effectview.frame = bgimageview.frame
        
        bgimageview.addSubview(effectview)
        
        bgimageview.image = UIImage(named: beijing.tupian)
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
