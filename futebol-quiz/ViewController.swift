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
    
    let quiz = [
                    ["Cristiano Ronaldo jogou no Barcelona antes de se transferir para o Real Madrid.", "Falso"],
                    ["Lionel Messi é o maior artilheiro da história da Liga dos Campeões da UEFA.", "Falso"]
                ]
    
    var numQuestao = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        atualizarPerguntas()
    }
    
    @IBAction func actionBtn(_ sender: UIButton) {
        
        let respostaUser = sender.currentTitle
        let respQuestaoAtual = quiz[numQuestao][1]
        
        if respostaUser == respQuestaoAtual {
            print("OK")
        }else{
            print("NOK")
        }
        
        if numQuestao + 1 < quiz.count {
            numQuestao += 1
            atualizarPerguntas()
        }
    }
    
    func atualizarPerguntas () {
        if (!quiz.isEmpty){
            perguntasLabel.text = quiz[numQuestao][0]
        }
    }
}
