//
//  ViewController.swift
//  futebol-quiz
//
//  Created by Arilson Silva on 09/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var perguntasLabel: UITextView!
    
    @IBOutlet weak var btnFalso: UIButton!
    @IBOutlet weak var btnVerdadeiro: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        atualizarPerguntas()
    }
    
    @IBAction func actionBtn(_ sender: UIButton) {
        
        guard let respostaUser = sender.currentTitle else {return}
        
        
        sender.backgroundColor = quizBrain.checkResposta(respostaUser) ? UIColor.green : UIColor.red
        
        quizBrain.proximaPergunta()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(atualizarPerguntas), userInfo: nil, repeats: false)
            
    }
    
    @objc func atualizarPerguntas () {
        
        perguntasLabel.text = quizBrain.textoAtual()
        progressBar.progress = quizBrain.atualizaProgressBar()
        
        btnVerdadeiro.backgroundColor = UIColor.clear
        btnFalso.backgroundColor = UIColor.clear
        
        
    }
}
