//
//  ResultViewController.swift
//  SlideshowAPP1
//
//  Created by Kazuyo Kohama on 2020/09/28.
//  Copyright © 2020 k.goat. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var imagelarge: UIImageView!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var image: UIImage!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    imagelarge.image = image
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
