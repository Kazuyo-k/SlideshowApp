//
//  ViewController.swift
//  SlideshowAPP1
//
//  Created by Kazuyo Kohama on 2020/09/28.
//  Copyright © 2020 k.goat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var img1 = UIImage(named :"1")
    var img2 = UIImage(named :"2")
    var img3 = UIImage(named :"3")
    var img4 = UIImage(named :"4")
    var img5 = UIImage(named :"5")
    
    //画像を表示させる
    @IBOutlet weak var image1: UIImageView!
    
    var count = 1
    
     //Nextボタン押すと次に進む。最後はまた１に戻る
    @IBAction func Next(_ sender: UIButton) {
        if count == 1{
            image1.image = img2
        }
        else if count == 2{
            image1.image = img3
        }
        else if  count == 3{
            image1.image = img4
        }
        else if  count == 4{
            image1.image = img5
        }
        else if count == 5{
            image1.image = img1
            count = 0
        }
        count += 1
    }
     //Backボタン押すと前に戻る。
    @IBAction func Back(_ sender: UIButton) {
        if count == 5{
            image1.image = img4
        }
        else if count == 4{
            image1.image = img3
        }
        else if count == 3{
            image1.image = img2
        }
        else if count == 2{
            image1.image = img1
        }
        else if count == 1{
            image1.image = img5
            count = 6
        }
        count -= 1
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControlerで宣言している変数imageに　image1のプロパティを
        resultViewController.image = image1.image!
       
        }
    // outletの接続
    @IBOutlet weak var startstop: UIButton!
    
         // 配列に指定するindex番号を宣言
            var nowIndex:Int = 0

         // スライドショーに使用するタイマーを宣言
            var timer: Timer!
         
         // スライドショーさせる画像の配列を宣言
            var img11 = UIImage(named :"1")
            var img22 = UIImage(named :"2")
            var img33 = UIImage(named :"3")
            var img44 = UIImage(named :"4")
            var img55 = UIImage(named :"5")
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
       // 再生ボタンを押した時の処理
    @IBAction func button(_ sender: Any) {

              // 再生中か停止しているか
              if (timer == nil) {
                
                //UIButtonを無効化
                nextbutton.isEnabled = false
                back.isEnabled = false

              // タイマーをセットする
              timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)

              // ボタンの名前を停止に変える
              startstop.setTitle("停止", for: .normal)
                  
                  } else {
                             // タイマーを停止する
                             timer.invalidate()

                             // タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため)
                             timer = nil

                             // ボタンの名前を再生にする
                             startstop.setTitle("再生", for: .normal)
                //UIButtonを有効化
                nextbutton.isEnabled = true
                back.isEnabled = true

              }
          }
         @IBAction func changeImage(_ sender: UIButton) {
            if count == 1{
              image1.image = img2
            }
            else if count == 2{
              image1.image = img3
            }
            else if count == 3{
              image1.image = img4
            }
            else if count == 4{
              image1.image = img5
            }
            else if count == 5{
              image1.image = img1
              count = 0
            }
            count += 1
         
        }
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var back: UIButton!
    
    

     //遷移先の戻るボタンから遷移元へ
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
       }

}
