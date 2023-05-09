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
    
    let quiz = ["Cristiano Ronaldo jogou no Barcelona antes de se transferir para o Real Madrid. (Falso)",
                "Lionel Messi é o maior artilheiro da história da Liga dos Campeões da UEFA. (Verdadeiro)",
                "Real Madrid é o time com mais títulos da Liga dos Campeões da UEFA. (Verdadeiro)",
                "Cristiano Ronaldo venceu a Liga dos Campeões da UEFA mais vezes do que Lionel Messi. (Verdadeiro)",
                "Lionel Messi e Cristiano Ronaldo nunca jogaram juntos em um mesmo time. (Verdadeiro)",
                "O Barcelona venceu mais vezes a Liga dos Campeões da UEFA do que o Real Madrid. (Falso)",
                "Cristiano Ronaldo é o jogador com mais gols em uma única temporada da Liga dos Campeões da UEFA. (Verdadeiro)",
                "Lionel Messi já marcou mais de 100 gols na Liga dos Campeões da UEFA. (Verdadeiro)",
                "O Real Madrid venceu a Liga dos Campeões da UEFA em três temporadas consecutivas. (Verdadeiro)",
                "Messi venceu mais vezes o prêmio de Jogador do Ano da UEFA do que Ronaldo. (Falso)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perguntasLabel.text = "Pergunta 1"
    }

    @IBAction func actionBtn(_ sender: UIButton) {
        
    }
    
}

