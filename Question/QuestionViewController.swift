//
//  QuestionViewController.swift
//  Question
//
//  Created by 洪宗燦 on 2024/8/2.
//

import UIKit

class QuestionViewController: UIViewController {
  
    
    
    
    @IBOutlet weak var AnswerLable: UILabel!
    
    @IBOutlet weak var QutstionLable:
    UILabel!
    var questions=[Question]()
    var index=0
    var book=[Book]()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // 創建 CAGradientLayer
                let gradientLayer = CAGradientLayer()
                
                // 設定漸變層的大小
                gradientLayer.frame = view.bounds
                
                // 設定漸變的顏色
                gradientLayer.colors = [
                    UIColor.red.cgColor,
                    UIColor.blue.cgColor
                ]
                
                // 設定漸變的方向
                gradientLayer.startPoint = CGPoint(x: 0, y: 0)
                gradientLayer.endPoint = CGPoint(x: 1, y: 1)
                
                // 將漸變層添加到視圖的圖層中
                view.layer.insertSublayer(gradientLayer, at: 0)

        
        
         questions = [
            Question(text: "最好的星座", answer: "水瓶座"),
            Question(text: "最好的餐廳", answer: "麥當勞"),
            Question(text: "最喜歡的顏色", answer: "藍色"),
            Question(text: "最喜歡的動物", answer: "貓"),
            Question(text: "最喜歡的運動", answer: "籃球"),
            Question(text: "最喜歡的電影", answer: "阿凡達"),
            Question(text: "最喜歡的音樂類型", answer: "流行音樂"),
            Question(text: "最喜歡的季節", answer: "秋天"),
            Question(text: "最喜歡的水果", answer: "芒果"),
            Question(text: "最喜歡的飲料", answer: "咖啡"),
            Question(text: "最喜歡的城市", answer: "東京")
        ]


        questions.shuffle()
        QutstionLable.text=questions[index].text
        AnswerLable.text=" "
        // Do any additional setup after loading the view.
    }
    
    @IBAction func NextQuestion(_ sender: Any) {
        if index + 1 < questions.count {
            index += 1
            QutstionLable.text = questions[index].text
            AnswerLable.text = ""
        }

    }
    @IBAction func ShowAnswer(_ sender: Any) {
        AnswerLable.text = questions[index].answer
    }
    
 
}
struct Question {
    var text:String
    var answer:String
}
