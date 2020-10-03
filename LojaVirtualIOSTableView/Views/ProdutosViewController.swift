//
//  ViewController.swift
//  LojaVirtualIOSTableView
//
//  Created by Rafael Nascimento Sampaio on 02/10/20.
//

import UIKit

class ProdutosViewController: UIViewController {

    @IBOutlet weak var produtosTableView: UITableView!
    
    var produtosEletronicos : [Produto] = [
        Produto(nome: "Smart TV LED 32” Philco PTV32E20AGBL", preco: 1092.49),
        Produto(nome: "Smart TV LED 55” Philco PTV55Q20SNBL Ultra HD 4k", preco: 2279.99),
        Produto(nome: "Drone Syma X8 Pro com Gps", preco: 1_399.90),
        Produto(nome: "MacBook Pro", preco: 14000.00),
        Produto(nome: "iPhone 11", preco: 9000.00)
    ]
    
    var produtosLazer: [Produto] = [
        Produto(nome: "Bola de Hugby", preco: 90.0),
        Produto(nome: "Bola de Futebol", preco: 70.00),
        Produto(nome: "Bola de Basquete", preco: 60.00)
    ]
    
    var gruposDeProdutos: [ColecaoDeProdutos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.gruposDeProdutos.append(ColecaoDeProdutos(nome: "Eletrônicos", produtos: self.produtosEletronicos, bgImage: UIImage(named: "TechCell") ?? UIImage()))
        self.gruposDeProdutos.append(ColecaoDeProdutos(nome: "Lazer", produtos: self.produtosLazer, bgImage: UIImage(named: "FunCell") ?? UIImage()))
        self.produtosTableView.dataSource = self
        self.produtosTableView.rowHeight = 90.0
        self.produtosTableView.estimatedRowHeight = 90
        
    }


}


// MARK: - TABLEVIEW - DATASOURCE
extension ProdutosViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.gruposDeProdutos.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var nome = self.gruposDeProdutos[section].nome
        return nome
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gruposDeProdutos[section].produtos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let produto: Produto = self.gruposDeProdutos[indexPath.section].produtos[indexPath.row]
//        let cell :UITableViewCell = self.produtosTableView.dequeueReusableCell(withIdentifier: "produto", for: indexPath)
//        cell.textLabel?.text = produto.nome
//        cell.detailTextLabel?.text = "R$ \(produto.preco)"
        let cell : ProdutoTableViewCell = self.produtosTableView.dequeueReusableCell(withIdentifier: "customProduct", for: indexPath) as? ProdutoTableViewCell ?? ProdutoTableViewCell();
        cell.nameLabel.text = produto.nome;
        cell.priceLabel.text = "R$ \(produto.preco)"
        cell.bgImage.image = self.gruposDeProdutos[indexPath.section].bgImage
        return cell
    }
    
    
}

