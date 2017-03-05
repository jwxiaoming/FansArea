//
//  area.swift
//  FansArea
//
//  Created by 狗儿心 on 17/2/2.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import Foundation

struct area {
    var areas:String
    var tupian:String
    var didian:String
    var leixing:String
    var isVisited:Bool
    var rating = ""
    
    
    //不影响原来初始化函数
    init(areas: String, tupian: String, didian: String, leixing: String, isVisited: Bool) {
        self.areas = areas
        self.tupian = tupian
        self.didian = didian
        self.leixing = leixing
        self.isVisited = isVisited
    }
}


		
