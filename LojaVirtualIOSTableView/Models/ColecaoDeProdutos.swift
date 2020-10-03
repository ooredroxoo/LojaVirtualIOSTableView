//
//  ColecaoDeProdutos.swift
//  LojaVirtualIOSTableView
//
//  Created by Rafael Nascimento Sampaio on 02/10/20.
//

import Foundation

class ColecaoDeProdutos {
    var nome: String
    var produtos: [Produto]
    
    init(nome:String) {
        self.nome = nome
        self.produtos = []
    }
    
    init(nome: String, produtos: [Produto]) {
        self.nome = nome
        self.produtos = produtos
    }
}
