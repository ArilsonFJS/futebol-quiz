//
//  Perguntas.swift
//  futebol-quiz
//
//  Created by Arilson Silva on 10/05/23.
//

import Foundation

struct Pergunta {
    let texto: String
    let resposta: String
    
    init(texto: String, resposta: String) {
        self.texto = texto
        self.resposta = resposta
    }
}
