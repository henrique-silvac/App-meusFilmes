//
//  ViewController.swift
//  Meus filmes teste
//
//  Created by Jamilton  Damasceno
//  Copyright © Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        filme = Filme(titulo:"007 - Spectre", descricao: "James Bond chega à Cidade do México e está pronto para eliminar Marco Sciarra sem que o chef M saiba da missão. O caso leva à suspensão temporária do agente, que passa a ser constantemente vigiado pelo governo britânico graças a uma tecnologia implantada em seu corpo por Q. Na tentativa de despistar os inimigos e até mesmo alguns de seus parceiros de trabalho, ele se responsabiliza por ajudar a filha de um desafeto. Toda a situação o leva ao centro de uma temida organização denominada Spectre.", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars - O Despertar da Força", descricao: "A queda de Darth Vader e do Império levou ao surgimento de uma nova força sombria: a Primeira Ordem. Eles procuram o jedi Luke Skywalker, desaparecido. A resistência tenta desesperadamente encontrá-lo antes para salvar a galáxia.", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "Colt (Freida Pinto) e John (Ryan Kwanten) são pistoleiros e companheiros em um mundo de duelos perigosos. Para vingar a morte de seu irmão, Colt vai contar com a ajuda de John para encontrar e eliminar o assassino.", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Deadpool", descricao: "Wade Wilson é um ex-agente especial que passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada. Com a ajuda de aliados poderosos e um senso de humor mais desbocado e cínico do que nunca, o irreverente anti-herói usa habilidades e métodos violentos para se vingar do homem que quase acabou com a sua vida.", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(titulo:"O Regresso", descricao: "Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(titulo:"A Herdeira", descricao: "Dina tem um dom sobrenatural e acaba sendo requisitada para fazer que um herdeiro confesse um crime, ao recusar, ela acaba presa e agora precisa descobrir quem é o culpado dos crimes para se salvar.", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Caçadores de Emoção", descricao: "Em uma cidade da Califórnia, gangue de ladrões de banco usa máscaras de ex-presidentes em seus assaltos. Um agente do FBI se infiltra entre os suspeitos - um grupo de surfistas -, e se torna a cada dia mais amigo do líder.", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Regresso do Mal", descricao: "Assombrado por imagens assustadoras e mensagens inexplicáveis, um homem tenta descobrir o mistério por trás do desaparecimento de seu filho.", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(titulo:"A Lenda de Tarzan", descricao: "Tarzan deixou as florestas da África para viver uma vida pacata como John Clayton III, o Lorde Greystoke, ao lado de sua esposa, Jane, na Inglaterra. Agora, ele é convidado para voltar ao Congo, onde passou a maior parte da sua vida, para servir como emissário de troca do Parlamento Britânico. Mas o que Tarzan não sabe é que está se dirigindo para uma armadilha mortal, fruto da vingança do capitão belga Leon Rom.", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Hardcore: Missão Extrema", descricao: "Henry, um ciborgue recém-ressuscitado, precisa salvar sua mulher das garras de um tirano psicótico com poderes telecinéticos que lidera um exército de mercenários. Jimmy é a única esperança de Henry para realizar tal feito até o final do dia.", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[ indexPath.row ]
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! FilmeCelula
        
        celula.filmeImageView.image = filme.imagem
        celula.filmeImageView.layer.cornerRadius = 26
        celula.filmeImageView.clipsToBounds = true
        
        celula.tituloLabel.text = filme.titulo
        
        celula.descricaoLabel.text = filme.descricao
        
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[ indexPath.row ]
                
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

