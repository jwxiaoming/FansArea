//
//  ReviewViewController.swift
//  TableViewApp
//
//  Created by 狗儿心 on 17/3/5.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    
    @IBOutlet weak var tiitle: UILabel!
    @IBOutlet weak var ratingStackview: UIStackView!
    @IBOutlet weak var bgimageview: UIImageView!
    @IBAction func ratingtap(_ sender: UIButton) {
        switch sender.tag {
        case 100:
            rating = "dislike"
        case 101:
            rating = "good"
        case 102:
            rating = "great"
        default:
            break
        }
        performSegue(withIdentifier: "unwindtoDetailTableVIew", sender: self)
    }

    var beijing: area!
    var rating: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 叠加一个虚化背景     
        let effect = UIBlurEffect(style: .light)
        
        let effectview = UIVisualEffectView(effect: effect)
        
        effectview.frame = bgimageview.frame
        
        bgimageview.addSubview(effectview)
        
        bgimageview.image = UIImage(named: beijing.tupian)
        
        //固定动画首帧
        ratingStackview.transform = CGAffineTransform(scaleX: 0, y: 0)
        tiitle.transform = CGAffineTransform(scaleX: 0, y: 0)
    }
    
    //固定动画尾帧
    override func viewDidAppear(_ animated: Bool) {
        //标题0.3秒变为原始大小
        UIView.animate(withDuration: 0.3){
            self.tiitle.transform = CGAffineTransform.identity
        }
        //震荡动画
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            self.ratingStackview.transform = CGAffineTransform.identity
        }, completion: nil)
        
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
