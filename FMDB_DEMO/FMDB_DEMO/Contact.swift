//
//  Contact.swift
//  FMDB_DEMO
//
//  Created by 丁嘉瑞 on 16/1/8.
//  Copyright © 2016年 Edward Ding. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var id = 0
    var name = ""
    var phone = ""
    
    init(id: Int, name: String, phone: String) {
        self.id = id
        self.name = name
        self.phone = phone
    }
}
