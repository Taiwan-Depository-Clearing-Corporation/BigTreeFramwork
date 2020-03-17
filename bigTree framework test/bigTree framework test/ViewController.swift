//
//  ViewController.swift
//  bigTree framework test
//
//  Created by WEI on 2020/2/17.
//  Copyright © 2020 greattree. All rights reserved.
//

import UIKit
import BigTreeFramework

class ViewController: UIViewController {

    //test branch
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Service.doSomething())
        
        //! 定义一个坐标点的结构体
        struct Point {
            var x = 0,y = 0
        }
        //! 定义一个大小的结构体
        struct Size {
            var width = 0,height = 0
        }
        /* 定义一个rect的结构体：一个rect会有原点，会有大小 根据这两个存储属性，可以计算得出 rect的center。
        因此我们会在`rect`中定义一个计算属性。利用其提供的`getter`和`setter`方法进行值得获取，和值被设置时进行相应处理*/
        struct rectGetSet {
            var origin = Point()
            var size = Size()
            //! get 和 set 都需要出现，
            var center : Point {
                get {
                    let centerX = origin.x + (size.width / 2)
                    let centerY = origin.y + (size.height / 2)
                    return Point(x: centerX, y: centerY)
                }
                set(customValue){
                    print(customValue)
                    print(size)
                    //`customValue`便是所赋新值的点
                    origin.x = customValue.x - (size.width / 2 )
                    origin.y = customValue.y - (size.height / 2 )
                }
            }
        }
        var frame = rectGetSet(origin: Point(x: 2, y: 2), size: Size.init(width: 10, height: 10)) //!< 不能使用`let`..
        frame.center = Point.init(x: 10, y: 10) //!<不重新赋值便会得到Point(x: 7, y: 7)
        print("应该调用了set方法后：\(frame.center)")//Point(x: 10, y: 10)
        // Do any additional setup after loading the view.
    }
   
 

}

struct areaStruct {
    var width = 0.0,height = 0.0
    var area:Double {
        return width * height
    }
}
