//
//  ColecaoDeProdutos.swift
//  LojaVirtualIOSTableView
//
//  Created by Rafael Nascimento Sampaio on 02/10/20.
//

import Foundation
import UIKit

class ColecaoDeProdutos {
    var nome: String
    var produtos: [Produto]
    var bgImage: UIImage
    
    init(nome:String) {
        self.nome = nome
        self.produtos = []
        self.bgImage = UIImage(named: "DefaultCell") ?? UIImage()
    }
    
    init(nome: String, produtos: [Produto]) {
        self.nome = nome
        self.produtos = produtos
        self.bgImage = UIImage(named: "DefaultCell") ?? UIImage()
    }
    
    init(nome: String, produtos: [Produto], bgImage: UIImage) {
        self.nome = nome
        self.produtos = produtos
        self.bgImage = bgImage
    }
}
