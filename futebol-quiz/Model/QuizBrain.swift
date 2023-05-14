//
//  QuinBrain.swift
//  futebol-quiz
//
//  Created by Arilson Silva on 13/05/23.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Pergunta(texto: "Cristiano Ronaldo jogou no Barcelona antes de se transferir para o Real Madrid.", resposta: "Falso"),
        Pergunta(texto:"Lionel Messi é o maior artilheiro da história da Liga dos Campeões da UEFA.", resposta: "Falso"),
        Pergunta(texto:"Real Madrid é o time com mais títulos da Liga dos Campeões da UEFA", resposta: "Verdadeiro"),
        Pergunta(texto:"Cristiano Ronaldo venceu a Liga dos Campeões da UEFA mais vezes do que Lionel Messi", resposta: "Verdadeiro"),
        Pergunta(texto:"O Barcelona venceu mais vezes a Liga dos Campeões da UEFA do que o Real Madrid.", resposta: "Falso"),
        Pergunta(texto: "Cristiano Ronaldo é o jogador com mais gols em uma única temporada da Liga dos Campeões da UEFA", resposta: "Verdadeiro"),
        Pergunta(texto: "O Real Madrid venceu a Liga dos Campeões da UEFA em três temporadas consecutivas.", resposta: "Verdadeiro"),
        Pergunta(texto: "Messi venceu mais vezes o prêmio de Jogador do Ano da UEFA do que Ronaldo.", resposta: "Falso")
    ]
    
    var numQuestao = 0
    var pontuacao = 0
    
    mutating func checkResposta (_ respostaUser: String) -> Bool{
        if respostaUser == quiz[numQuestao].resposta {
            pontuacao += 1
            return true
        }else{
            return false
        }
    }
    
    func getPontuacao () -> Int {
        return pontuacao
    }
    
    func textoAtual () -> String {
        
        var perguntaAtual = ""
        
        if !quiz.isEmpty {
           perguntaAtual = quiz[numQuestao].texto
        }
        return perguntaAtual
    }
    
    func atualizaProgressBar () -> Float{
        
        let progress = Float(numQuestao + 1 ) / Float(quiz.count)
        return progress
    }
    
    mutating func proximaPergunta () {
        
        if numQuestao + 1 < quiz.count {
            numQuestao += 1
            
        } else{
            numQuestao = 0
            pontuacao = 0
        }
    }
}

