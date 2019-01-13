//
//  ViewController.swift
//  choice
//
//  Created by User03 on 2019/1/9.
//  Copyright © 2019 User03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var qString = ["請問彼得潘是不是超帥 \nA:是\nB:當然\nC:還要懷疑ㄇ\nD:以上皆是","請問彼得潘是不是真的超帥 \nA:是\nB:當然\nC:還要懷疑ㄇ\nD:以上皆是","請問app製作人的生日是西元幾年 \nA:1995\nB:1945\nC:1895\nD:誰會知道啊","下列哪個不是Aqours的成員 \nA:伊波杏樹\nB:小林愛香\nC:逢田梨香子\nD:愛美","下列哪個不是poppin’ party的成員 \nA:伊波杏樹\nB:愛美\nC:大橋彩香\nD:伊藤彩沙","下列哪個不是Roselia的成員 \nA:相羽愛奈\nB:愛美\nC:中島由貴\nD:工藤晴香","下列哪個不是Afterglow的成員 \nA:佐倉綾音\nB:日笠陽子\nC:大橋彩香\nD:金元壽子","請問實況主吳彩學４８４不洗澡 \nA:是\nB:是\nC:是\nD:以上皆是","下列哪個不是Guilty Kiss的成員 \nA:小林愛香\nB:逢田梨香子\nC:鈴木愛奈\nD:伊波杏樹","下列哪個不是CYRon的成員 \nA:伊波杏樹\nB:愛美\nC:齊藤朱夏\nD:降幡愛"]
    var aswString = [4,4,4,4,1,2,3,4,4,1]
    var scoreString = ["分數：0","分數：10","分數：20","分數：30","分數：40","分數：50","分數：60","分數：70","分數：80","分數：90","分數：100",]
    var qNumString = ["問題１","問題２","問題３","問題４","問題５","問題６","問題７","問題８","問題９","問題１０","問題結束","問題結束","問題結束"]
    var qNum = 0
    var qCount = 0
    var qCorrect = 0
    var rannum = Int.random(in: 0...9)
    @IBOutlet weak var detailText:UILabel!
    @IBOutlet weak var quecount:UILabel!
    @IBOutlet weak var scorecount:UILabel!
    @IBOutlet weak var ba:UIButton!
    @IBOutlet weak var bb:UIButton!
    @IBOutlet weak var bc:UIButton!
    @IBOutlet weak var bd:UIButton!
    func judgeQues(for Asw: Int) -> Bool{
        if Asw == aswString[qNum]{
            return true
        }else{
            return false
        }
    }
    func sendNewQ(){
        rannum = Int.random(in: 0...9)
        qNum = rannum
        detailText.text = qString[qNum]
        if qCount <= 9{
            quecount.text = qNumString[qCount]
        }
        scorecount.text = scoreString[qCorrect]
    }
    @IBAction func buttonPressedA(_ sender: Any) {
        var trueorFalse = true
        qCount = qCount + 1
        var ans = 1
        trueorFalse = judgeQues(for : ans)
        
        if qCount >= 9{
            detailText.text = "問答結束"
            ba.isEnabled = false
            bb.isEnabled = false
            bc.isEnabled = false
            bd.isEnabled = false
        }
        else{
            sendNewQ()
        }
        if trueorFalse{
            qCorrect = qCorrect + 1
            
            scorecount.text = scoreString[qCorrect]
        }
    }
    @IBAction func buttonPressedB(_ sender: Any) {
        var trueorFalse = true
        qCount = qCount + 1
        var ans = 2
        trueorFalse = judgeQues(for : ans)
        
        if qCount >= 9{
            detailText.text = "問答結束"
            ba.isEnabled = false
            bb.isEnabled = false
            bc.isEnabled = false
            bd.isEnabled = false
        }
        else{
            sendNewQ()
        }
        if trueorFalse{
            qCorrect = qCorrect + 1
            
            scorecount.text = scoreString[qCorrect]
        }
    }
    @IBAction func buttonPressedC(_ sender: Any) {
        var trueorFalse = true
        qCount = qCount + 1
        var ans = 3
        trueorFalse = judgeQues(for : ans)
        
        if qCount >= 9{
            detailText.text = "問答結束"
            ba.isEnabled = false
            bb.isEnabled = false
            bc.isEnabled = false
            bd.isEnabled = false
        }
        else{
            sendNewQ()
        }
        if trueorFalse{
            qCorrect = qCorrect + 1
            
            scorecount.text = scoreString[qCorrect]
        }
    }
    @IBAction func buttonPressedD(_ sender: Any) {
        var trueorFalse = true
        qCount = qCount + 1
        var ans = 4
        trueorFalse = judgeQues(for : ans)
        
        if qCount >= 9{
            detailText.text = "問答結束"
            ba.isEnabled = false
            bb.isEnabled = false
            bc.isEnabled = false
            bd.isEnabled = false
        }
        else{
            sendNewQ()
        }
        if trueorFalse{
            qCorrect = qCorrect + 1
            
            scorecount.text = scoreString[qCorrect]
        }
    }
    @IBAction func buttonPressedReset(_ sender: Any) {
        qCount = 0
        qCorrect = 0
        ba.isEnabled = true
        bb.isEnabled = true
        bc.isEnabled = true
        bd.isEnabled = true
        sendNewQ()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sendNewQ()
        
    }
    
}

